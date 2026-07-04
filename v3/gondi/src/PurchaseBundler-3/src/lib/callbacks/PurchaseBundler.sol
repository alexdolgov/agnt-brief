// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.24;

import "@solmate/auth/Owned.sol";
import "@solmate/tokens/ERC721.sol";
import "@solmate/tokens/WETH.sol";
import "@solmate/utils/FixedPointMathLib.sol";
import "@solmate/utils/SafeTransferLib.sol";
import {IPool} from "@aave/interfaces/IPool.sol";

import "../../interfaces/external/IReservoir.sol";
import "../../interfaces/callbacks/IPurchaseBundler.sol";
import "../../interfaces/callbacks/ILoanCallback.sol";
import "../../interfaces/external/ICryptoPunksMarket.sol";
import "../../interfaces/external/IWrappedPunk.sol";
import "../../interfaces/external/ICryptoPunks721.sol";
import "../../interfaces/external/IUniversalRouter.sol";
import "../utils/WithProtocolFee.sol";
import "../loans/MultiSourceLoan.sol";
import "../utils/BytesLib.sol";
import "../AddressManager.sol";
import "../InputChecker.sol";
import "./TradeMarketplace.sol";
import {IAaveFlashLoanReceiver} from "../../interfaces/external/IAaveFlashLoanReceiver.sol";
import {IMultiSourceLoan as IMultiSourceLoanV2} from "@florida-v2/src/interfaces/loans/IMultiSourceLoan.sol";
import {IPermit2} from "@permit2/interfaces/IPermit2.sol";

contract PurchaseBundler is
    IPurchaseBundler,
    ILoanCallback,
    ERC721TokenReceiver,
    WithProtocolFee,
    TradeMarketplace,
    IAaveFlashLoanReceiver
{
    using FixedPointMathLib for uint256;
    using BytesLib for bytes;
    using InputChecker for address;
    using SafeTransferLib for ERC20;
    using SafeTransferLib for WETH;

    uint256 public constant TAX_UPDATE_NOTICE = 7 days;

    /// keccak256("afterPrincipalTransfer(IMultiSourceLoan.Loan,uint256,bytes)")
    bytes4 private constant afterPrincipalTransferSelector = bytes4(
        keccak256(
            "afterPrincipalTransfer((address,uint256,address,address,uint256,uint256,uint256,(uint256,uint256,uint256,address,uint256,uint256,uint256)[],uint256),uint256,bytes)"
        )
    );

    /// keccak256("afterNFTTransfer(IMultiSourceLoan.Loan,bytes)")
    bytes4 private constant afterNFTTransferSelector = bytes4(
        keccak256(
            "afterNFTTransfer((address,uint256,address,address,uint256,uint256,uint256,(uint256,uint256,uint256,address,uint256,uint256,uint256)[],uint256),bytes)"
        )
    );

    /// keccak256("afterPrincipalTransfer(IMultiSourceLoanV2.Loan,uint256,bytes)")
    bytes4 private constant afterPrincipalTransferSelectorV2 = bytes4(
        keccak256(
            "afterPrincipalTransfer((address,uint256,address,address,uint256,uint256,uint256,(uint256,address,uint256,uint256,uint256,uint256)[]),uint256,bytes)"
        )
    );

    /// keccak256("afterNFTTransfer(IMultiSourceLoanV2.Loan,bytes)")
    bytes4 private constant afterNFTTransferSelectorV2 = bytes4(
        keccak256(
            "afterNFTTransfer((address,uint256,address,address,uint256,uint256,uint256,(uint256,address,uint256,uint256,uint256,uint256)[]),bytes)"
        )
    );
    uint256 private constant _PRECISION = 10000;
    uint256 private constant _MAX_TAX = 5000;
    uint256 private constant _MSG_SENDER_TOFFSET = 0x0;

    AddressManager private immutable _marketplaceContractsAddressManager;
    AddressManager private immutable _currencyManager;
    WETH private immutable _weth;

    Taxes private _pendingTaxes;
    uint256 private _pendingTaxesSetTime;
    Taxes private _taxes;

    address private _pendingMultiSourceLoanAddress;

    MultiSourceLoan private _multiSourceLoan;
    ICryptoPunksMarket private immutable _punkMarket;
    IWrappedPunk private immutable _wrappedPunk;
    ICryptoPunks721 private immutable _c721;
    IUniversalRouter private immutable _uniswapRouter;
    IPermit2 internal immutable _permit2;
    address private immutable _punkProxy;

    event BNPLLoansStarted(uint256[] loanIds);
    event SellAndRepayExecuted(uint256[] loanIds);
    event MultiSourceLoanPendingUpdate(address newAddress);
    event MultiSourceLoanUpdated(address newAddress);
    event TaxesPendingUpdate(Taxes newTaxes);
    event TaxesUpdated(Taxes taxes);

    error MarketplaceAddressNotWhitelisted();
    error CurrencyNotWhitelisted();
    error OnlyWethSupportedError();

    error OnlyLoanCallableError();
    error InvalidAddressUpdateError();
    error CouldNotReturnEthError();
    error InvalidTaxesError(Taxes newTaxes);
    error InvalidPrincipalError();
    error InvalidCollateralError();
    error InvalidExecutionData();

    constructor(
        string memory name,
        address multiSourceLoanAddress,
        address marketplaceContracts,
        address payable wethAddress,
        address payable punkMarketAddress,
        address payable wrappedPunkAddress,
        address payable c721Address,
        address payable uniswapRouterAddress,
        address payable permit2Address,
        address currencyManager,
        Taxes memory taxes,
        uint256 minWaitTime,
        ProtocolFee memory protocolFee
    ) WithProtocolFee(tx.origin, minWaitTime, protocolFee) TradeMarketplace(name) {
        multiSourceLoanAddress.checkNotZero();
        marketplaceContracts.checkNotZero();

        _multiSourceLoan = MultiSourceLoan(multiSourceLoanAddress);
        _marketplaceContractsAddressManager = AddressManager(marketplaceContracts);
        _weth = WETH(wethAddress);
        _punkMarket = ICryptoPunksMarket(punkMarketAddress);
        _wrappedPunk = IWrappedPunk(wrappedPunkAddress);
        _c721 = ICryptoPunks721(c721Address);
        _uniswapRouter = IUniversalRouter(uniswapRouterAddress);
        _permit2 = IPermit2(permit2Address);
        _currencyManager = AddressManager(currencyManager);
        _wrappedPunk.registerProxy();
        _punkProxy = _wrappedPunk.proxyInfo(address(this));
        _taxes = taxes;
        _pendingTaxesSetTime = type(uint256).max;

        ERC20(address(_weth)).safeApprove(permit2Address, type(uint256).max);
    }

    modifier onlyLoanContract() {
        if (msg.sender != address(_multiSourceLoan)) {
            revert OnlyLoanCallableError();
        }
        _;
    }

    function approveForSwap(address currency) external {
        if (!_currencyManager.isWhitelisted(currency)) {
            revert CurrencyNotWhitelisted();
        }
        ERC20(currency).safeApprove(address(_permit2), type(uint256).max);
    }

    /// @inheritdoc IPurchaseBundler
    /// @dev Buy calls emit loan -> Before trying to transfer the NFT but after transfering the principal
    /// emitLoan will call the afterPrincipalTransfer Hook, which will execute the purchase.
    function buy(bytes[] calldata executionData) external payable returns (uint256[] memory loanIds) {
        loanIds = _buy(executionData);
    }

    /// @dev Similar to buy. Hook is called after the NFT transfer but before transfering WETH for repayment.
    /// @inheritdoc IPurchaseBundler
    function sell(bytes[] calldata executionData) external {
        _sell(executionData);
    }

    /// @dev This function is called by the buyer to execute the borrower signed sell.
    /// @inheritdoc IPurchaseBundler
    function executeSell(
        ERC20[] calldata currencies,
        uint256[] calldata currencyAmounts,
        ERC721[] calldata collections,
        uint256[] calldata tokenIds,
        address marketPlace,
        bytes[] calldata executionData
    ) external _storeMsgSender {
        if (!_marketplaceContractsAddressManager.isWhitelisted(marketPlace)) {
            revert MarketplaceAddressNotWhitelisted();
        }

        if (executionData.length != collections.length) {
            revert InvalidExecutionData();
        }

        if (!_marketplaceContractsAddressManager.isWhitelisted(marketPlace)) {
            revert MarketplaceAddressNotWhitelisted();
        }

        address buyer = _msgSender();
        for (uint256 i = 0; i < currencies.length; ++i) {
            if (!_currencyManager.isWhitelisted(address(currencies[i]))) {
                revert CurrencyNotWhitelisted();
            }
            uint256 balance = currencies[i].balanceOf(address(this));
            if (currencyAmounts[i] > balance) {
                currencies[i].safeTransferFrom(buyer, address(this), currencyAmounts[i] - balance);
            }
            currencies[i].safeApprove(marketPlace, currencyAmounts[i]);
        }
        for (uint256 i = 0; i < collections.length; ++i) {
            collections[i].setApprovalForAll(marketPlace, true);
        }

        _sell(executionData);

        for (uint256 i = 0; i < currencies.length; ++i) {
            _paybackRemaining(currencies[i]);
            currencies[i].safeApprove(marketPlace, 0);
        }
        for (uint256 i = 0; i < collections.length; ++i) {
            _givebackNFTOrPunk(collections[i], tokenIds[i]);
        }
    }

    /// @dev This function is called by the buyer to execute a loaned sell with eth.
    /// the borrower must make a listing in loan.principal
    /// the buyer must send eth value and it will receive the NFT without any wrapper.
    function executeSellWithETH(
        bytes calldata wethPrincipalSwapData,
        ERC20 principal,
        ERC721 collection,
        uint256 tokenId,
        bytes calldata executionData
    ) external payable _storeMsgSender {
        _weth.deposit{value: msg.value}();
        _swapWETH(wethPrincipalSwapData);
        _sell(executionData);
        _givebackNFTOrPunk(collection, tokenId);
        _paybackRemaining(principal);
        _paybackRemainingWeth();
    }

    /// @dev This function is called by the buyer to execute a loaned sell with a buy.
    /// the borrower must make a listing in loan.principal
    /// the buyer must send eth value and it will receive the NFT without any wrapper.
    function executeSellWithLoan(ExecuteSellWithLoanArgs calldata args) external _storeMsgSender {
        bytes memory params = abi.encode(args);
        uint256[] memory interestRateModes = new uint256[](args.borrowArgs.assets.length);
        for (uint256 i = 0; i < interestRateModes.length; i++) {
            interestRateModes[i] = 0;
        }
        args.borrowArgs.pool.flashLoan(
            address(this), args.borrowArgs.assets, args.borrowArgs.amounts, interestRateModes, address(this), params, 0
        );
    }

    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address,
        bytes calldata params
    ) external override(IAaveFlashLoanReceiver) returns (bool) {
        (ExecuteSellWithLoanArgs memory args) = abi.decode(params, (ExecuteSellWithLoanArgs));
        this.executeSell(
            args.executeSellArgs.currencies,
            args.executeSellArgs.currencyAmounts,
            args.executeSellArgs.collections,
            args.executeSellArgs.tokenIds,
            args.executeSellArgs.marketPlace,
            args.executeSellArgs.executionData
        );
        _multiSourceLoan.multicall(args.loanExecutionData);
        address _buyer = _msgSender();
        for (uint256 i = 0; i < assets.length; i++) {
            uint256 owed = amounts[i] + premiums[i];
            ERC20 asset = ERC20(assets[i]);
            uint256 balance = asset.balanceOf(address(this));
            if (balance < owed) {
                asset.safeTransferFrom(_buyer, address(this), owed - balance);
            } else if (balance > owed) {
                asset.safeTransfer(_buyer, balance - owed);
            }
            asset.safeApprove(address(args.borrowArgs.pool), owed);
        }
        return true;
    }

    /// @inheritdoc ILoanCallback
    /// @dev method for current MSL
    function afterPrincipalTransfer(IMultiSourceLoan.Loan calldata _loan, uint256 _fee, bytes calldata _executionData)
        external
        onlyLoanContract
        returns (bytes4)
    {
        _afterPrincipalTransfer(_loan, _fee, _executionData);
        return afterPrincipalTransferSelector;
    }

    /// @inheritdoc ILoanCallback
    /// @dev method for current MSL
    function afterNFTTransfer(IMultiSourceLoan.Loan calldata _loan, bytes calldata _executionData)
        external
        onlyLoanContract
        returns (bytes4)
    {
        _afterNFTTransfer(_loan, _executionData);
        return afterNFTTransferSelector;
    }

    /// @dev overloaded method for previous MSL
    function afterPrincipalTransfer(IMultiSourceLoanV2.Loan calldata _loan, uint256 _fee, bytes calldata _executionData)
        external
        onlyLoanContract
        returns (bytes4)
    {
        _weth.safeTransferFrom(_loan.borrower, address(this), _loan.principalAmount - _fee);
        _afterPrincipalTransfer(_map_msl(_loan), _fee, _executionData);
        return afterPrincipalTransferSelectorV2;
    }

    /// @dev overloaded method for previous MSL
    function afterNFTTransfer(IMultiSourceLoanV2.Loan calldata _loan, bytes calldata _executionData)
        external
        onlyLoanContract
        returns (bytes4)
    {
        _afterNFTTransfer(_map_msl(_loan), _executionData);
        return afterNFTTransferSelectorV2;
    }

    function _afterPrincipalTransfer(IMultiSourceLoan.Loan memory _loan, uint256 _fee, bytes calldata _executionData)
        private
    {
        ExecutionInfo memory purchaseBundlerExecutionInfo = abi.decode(_executionData, (ExecutionInfo));
        IReservoir.ExecutionInfo memory executionInfo = purchaseBundlerExecutionInfo.reservoirExecutionInfo;
        if (!_marketplaceContractsAddressManager.isWhitelisted(executionInfo.module)) {
            revert MarketplaceAddressNotWhitelisted();
        }
        if (_loan.principalAddress != address(_weth)) {
            revert OnlyWethSupportedError();
        }
        uint256 borrowed = _loan.principalAmount - _fee;
        /// @dev Get WETH from the borrower and unwrap it since listings expect native ETH.
        _weth.withdraw(borrowed);

        (bool success,) = executionInfo.module.call{value: executionInfo.value}(executionInfo.data);
        if (!success) {
            revert InvalidCallbackError();
        }
        if (borrowed > executionInfo.value) {
            payable(address(_loan.borrower)).transfer(borrowed - executionInfo.value);
        }
        /// @dev If contract must be owner we transfer the NFT to the purchaseBundler contract.
        if (executionInfo.module == address(_punkMarket)) {
            /// @dev Wrap punk and transfer it to the borrower (loan is in Wrapped Punks).
            _punkMarket.transferPunk(address(_punkProxy), _loan.nftCollateralTokenId);
            _wrappedPunk.mint(_loan.nftCollateralTokenId);
            _wrappedPunk.transferFrom(address(this), _loan.borrower, _loan.nftCollateralTokenId);
        } else if (purchaseBundlerExecutionInfo.contractMustBeOwner) {
            ERC721(_loan.nftCollateralAddress).transferFrom(address(this), _loan.borrower, _loan.nftCollateralTokenId);
        }

        _handleTax(_loan, _taxes.buyTax);
    }

    /// @dev See notes for `afterPrincipalTransfer`.
    function _afterNFTTransfer(IMultiSourceLoan.Loan memory loan, bytes calldata _executionData) private {
        ExecutionInfo memory purchaseBundlerExecutionInfo = abi.decode(_executionData, (ExecutionInfo));
        IReservoir.ExecutionInfo memory executionInfo = purchaseBundlerExecutionInfo.reservoirExecutionInfo;
        bool contractMustBeOwner = purchaseBundlerExecutionInfo.contractMustBeOwner;
        if (!_marketplaceContractsAddressManager.isWhitelisted(executionInfo.module)) {
            revert MarketplaceAddressNotWhitelisted();
        }
        bool success;
        /// @dev Similar to `afterPrincipalTransfer`, we use the matchOrder method to avoid extra transfers.
        /// Note that calling fullfilment on seaport will fail on this contract.
        if (executionInfo.module == address(_punkMarket)) {
            success = _sellReleasedCollateralInPunkMarket(loan, executionInfo);
        } else if (executionInfo.module == address(this)) {
            success = _sellReleasedCollateral(loan, executionInfo);
        } else {
            success = _sellReleasedCollateralInMarketplace(loan, executionInfo, contractMustBeOwner);
        }
        if (!success) {
            revert InvalidCallbackError();
        }
        _handleTax(loan, _taxes.sellTax);
    }

    /// @inheritdoc IPurchaseBundler
    function updateMultiSourceLoanAddressFirst(address _newAddress) external onlyOwner {
        _newAddress.checkNotZero();

        _pendingMultiSourceLoanAddress = _newAddress;

        emit MultiSourceLoanPendingUpdate(_newAddress);
    }

    /// @inheritdoc IPurchaseBundler
    function finalUpdateMultiSourceLoanAddress(address _newAddress) external onlyOwner {
        if (_pendingMultiSourceLoanAddress != _newAddress) {
            revert InvalidAddressUpdateError();
        }

        _multiSourceLoan = MultiSourceLoan(_newAddress);
        _pendingMultiSourceLoanAddress = address(0);

        emit MultiSourceLoanUpdated(_newAddress);
    }

    /// @inheritdoc IPurchaseBundler
    function getMultiSourceLoanAddress() external view override returns (address) {
        return address(_multiSourceLoan);
    }

    /// @inheritdoc IPurchaseBundler
    function getTaxes() external view returns (Taxes memory) {
        return _taxes;
    }

    /// @inheritdoc IPurchaseBundler
    function getPendingTaxes() external view returns (Taxes memory) {
        return _pendingTaxes;
    }

    /// @inheritdoc IPurchaseBundler
    function getPendingTaxesSetTime() external view returns (uint256) {
        return _pendingTaxesSetTime;
    }

    /// @inheritdoc IPurchaseBundler
    function updateTaxes(Taxes calldata _newTaxes) external onlyOwner {
        if (_newTaxes.buyTax > _MAX_TAX || (_newTaxes.sellTax > _MAX_TAX)) {
            revert InvalidTaxesError(_newTaxes);
        }

        _pendingTaxes = _newTaxes;
        _pendingTaxesSetTime = block.timestamp;

        emit TaxesPendingUpdate(_newTaxes);
    }

    /// @inheritdoc IPurchaseBundler
    function setTaxes() external onlyOwner {
        if (block.timestamp < _pendingTaxesSetTime + TAX_UPDATE_NOTICE) {
            revert TooEarlyError(_pendingTaxesSetTime);
        }
        Taxes memory taxes = _pendingTaxes;
        _taxes = taxes;

        emit TaxesUpdated(taxes);
    }

    function _buy(bytes[] calldata executionData) private returns (uint256[] memory) {
        bytes[] memory encodedOutput = _multiSourceLoan.multicall(executionData);
        uint256[] memory loanIds = new uint256[](encodedOutput.length);
        uint256 total = encodedOutput.length;
        for (uint256 i; i < total;) {
            if (executionData[i].length <= 4) {
                // it should include the selector and parameters
                revert InvalidExecutionData();
            }
            loanIds[i] = abi.decode(encodedOutput[i], (uint256));
            unchecked {
                ++i;
            }
        }

        /// Return any remaining funds to sender.
        uint256 remainingBalance;
        assembly {
            remainingBalance := selfbalance()
        }
        if (remainingBalance != 0) {
            (bool success,) = payable(msg.sender).call{value: remainingBalance}("");
            if (!success) {
                revert CouldNotReturnEthError();
            }
        }
        emit BNPLLoansStarted(loanIds);
        return loanIds;
    }

    function _handleTax(IMultiSourceLoan.Loan memory loan, uint256 tax) private {
        if (tax == 0) {
            return;
        }

        ProtocolFee memory protocolFee = _protocolFee;

        address principalAddress = loan.principalAddress;
        address borrower = loan.borrower;
        uint256 totalFeeTax;
        uint256 totalTranches = loan.tranche.length;
        for (uint256 i; i < totalTranches; ++i) {
            IMultiSourceLoan.Tranche memory tranche = loan.tranche[i];
            uint256 taxCost = tranche.principalAmount.mulDivUp(tax, _PRECISION);
            uint256 feeTax = taxCost.mulDivUp(protocolFee.fraction, _PRECISION);
            totalFeeTax += feeTax;
            ERC20(principalAddress).safeTransferFrom(borrower, tranche.lender, taxCost - feeTax);
        }
        if (totalFeeTax != 0) {
            ERC20(principalAddress).safeTransferFrom(borrower, protocolFee.recipient, totalFeeTax);
        }
    }

    function _paybackRemaining(ERC20 currency) private {
        uint256 remaining = currency.balanceOf(address(this));
        if (remaining > 0) {
            currency.safeTransfer(_msgSender(), remaining);
        }
    }

    function _paybackRemainingWeth() private {
        uint256 remaining = _weth.balanceOf(address(this));
        _weth.withdraw(remaining);
        payable(msg.sender).transfer(remaining);
    }

    function _givebackNFTOrPunk(ERC721 collection, uint256 tokenId) private {
        if (_isPunkWrapper(collection)) _givebackPunk(collection, tokenId);
        else _givebackNFT(collection, tokenId);
    }

    function _givebackPunk(ERC721 collection, uint256 tokenId) private {
        address nakedOwner = _punkMarket.punkIndexToAddress(tokenId);
        address buyer = _msgSender();
        if (nakedOwner != address(collection) && nakedOwner != buyer) {
            // @dev if nakedOwner is not the wrapper, the punk has been unwrapped and should be transferred to the caller
            _punkMarket.transferPunk(buyer, tokenId);
        } else if (nakedOwner != buyer) {
            _givebackNFT(collection, tokenId);
        }
    }

    function _givebackNFT(ERC721 collection, uint256 tokenId) private {
        if (collection.ownerOf(tokenId) != _msgSender()) {
            collection.safeTransferFrom(address(this), _msgSender(), tokenId);
        }
    }

    function _sell(bytes[] calldata executionData) private {
        _multiSourceLoan.multicall(executionData);
        uint256[] memory loanIds = new uint256[](executionData.length);
        uint256 total = executionData.length;
        for (uint256 i = 0; i < total; ++i) {
            if (executionData[i].length <= 4) {
                // it should include the selector and parameters
                revert InvalidExecutionData();
            }
            IMultiSourceLoan.LoanRepaymentData memory repaymentData =
                abi.decode(executionData[i][4:], (IMultiSourceLoan.LoanRepaymentData));
            loanIds[i] = repaymentData.data.loanId;
        }
        emit SellAndRepayExecuted(loanIds);
    }

    function _sell(bytes calldata executionData) private {
        (bool success, bytes memory returndata) = address(_multiSourceLoan).call(executionData);
        if (!success) {
            revert IMulticall.MulticallFailed(0, returndata);
        }
        uint256[] memory loanIds = new uint256[](1);
        IMultiSourceLoan.LoanRepaymentData memory repaymentData =
            abi.decode(executionData[4:], (IMultiSourceLoan.LoanRepaymentData));
        loanIds[0] = repaymentData.data.loanId;
        emit SellAndRepayExecuted(loanIds);
    }

    /// @dev Sell the NFT in the punk market before making the loan repayment
    /// @param loan The loan to sell the NFT from
    /// @param executionInfo The execution info of the market, includes calldata to execute the market sell
    /// @return success True if the sell was successful, false otherwise
    function _sellReleasedCollateralInPunkMarket(
        IMultiSourceLoan.Loan memory loan,
        IReservoir.ExecutionInfo memory executionInfo
    ) private returns (bool success) {
        /// @dev Unwrap punk
        ERC721 collateral = ERC721(loan.nftCollateralAddress);
        ERC20 principal = ERC20(loan.principalAddress);
        uint256 tokenId = loan.nftCollateralTokenId;
        uint256 owedToBorrower = executionInfo.value;

        collateral.transferFrom(loan.borrower, address(this), tokenId);
        _unwrapPunk(collateral, tokenId);

        /// @dev Execute sell, claim ETH from the contract and wrap it before sending it to the borrower.
        (success,) = executionInfo.module.call(executionInfo.data);
        _punkMarket.withdraw();
        _weth.deposit{value: owedToBorrower}();
        principal.safeTransfer(loan.borrower, owedToBorrower);
    }

    /// @dev Sell the NFT in this contract before making the loan repayment
    /// @param loan The loan to sell the NFT from
    /// @param executionInfo The execution info of the market
    /// @return success True if the sell was successful, false otherwise
    function _sellReleasedCollateral(IMultiSourceLoan.Loan memory loan, IReservoir.ExecutionInfo memory executionInfo)
        private
        returns (bool success)
    {
        ITradeMarketplace.Order memory order = abi.decode(executionInfo.data, (ITradeMarketplace.Order));
        ERC721 collateral = ERC721(order.collection);
        ERC20 principal = ERC20(loan.principalAddress);
        uint256 tokenId = order.tokenId;
        address taker = _msgSender();

        if (address(principal) != order.currency) {
            revert InvalidPrincipalError();
        }
        if (address(collateral) != address(loan.nftCollateralAddress)) {
            revert InvalidCollateralError();
        }

        _executeOrder(order, address(this));

        if (_isPunkWrapper(collateral)) {
            _unwrapPunk(collateral, tokenId);
            _punkMarket.transferPunk(taker, tokenId);
        }
        return true;
    }

    /// @dev Sell the NFT in another market before making the loan repayment
    /// @param loan The loan to sell the NFT from
    /// @param executionInfo The execution info of the market, includes calldata to execute the market sell
    /// @param contractMustBeOwner If this contract must own the NFT and take the buyer's role in the market
    /// @return success True if the sell was successful, false otherwise
    function _sellReleasedCollateralInMarketplace(
        IMultiSourceLoan.Loan memory loan,
        IReservoir.ExecutionInfo memory executionInfo,
        bool contractMustBeOwner
    ) private returns (bool success) {
        if (!contractMustBeOwner) {
            (success,) = executionInfo.module.call(executionInfo.data);
            return success;
        }
        ERC721 collateral = ERC721(loan.nftCollateralAddress);
        ERC20 principal = ERC20(loan.principalAddress);
        uint256 tokenId = loan.nftCollateralTokenId;
        uint256 owedToBorrower = executionInfo.value;

        collateral.transferFrom(loan.borrower, address(this), tokenId);
        collateral.approve(executionInfo.module, tokenId);
        (success,) = executionInfo.module.call(executionInfo.data);
        principal.safeTransfer(loan.borrower, owedToBorrower);
    }

    /// @dev Function to perform a swap of eth to another currency.
    /// @dev The output currency is given to this contract.
    /// @param swapData The swap data to perform the swap.
    function _swapWETH(bytes calldata swapData) private {
        if (swapData.length == 0) return;
        _permit2.approve(address(_weth), address(_uniswapRouter), type(uint160).max, 0);
        (bytes memory commands, bytes[] memory inputs, uint256 deadline) =
            abi.decode(swapData, (bytes, bytes[], uint256));
        _uniswapRouter.execute(commands, inputs, deadline);
    }

    /// @dev Unwraps an NFT from a wrapper contract.
    /// @param wrapper The wrapper contract to unwrap the NFT from.
    /// @param tokenId The token ID of the NFT to unwrap.
    function _unwrapPunk(ERC721 wrapper, uint256 tokenId) private {
        if (address(wrapper) == address(_c721)) {
            _c721.unwrapPunk(tokenId);
        } else if (address(wrapper) == address(_wrappedPunk)) {
            _wrappedPunk.burn(tokenId);
        }
    }

    /// @dev Unwraps an NFT from a wrapper contract.
    /// @param wrapper The wrapper contract to unwrap the NFT from.
    /// @return The naked NFT address if successful, otherwise the wrapper contract doing nothing.
    function _isPunkWrapper(ERC721 wrapper) private view returns (bool) {
        return address(wrapper) == address(_c721) || address(wrapper) == address(_wrappedPunk);
    }

    modifier _storeMsgSender() {
        address msgSender = _tloadMsgSender();
        if (msgSender != address(0)) {
            _;
            return;
        }
        assembly {
            tstore(_MSG_SENDER_TOFFSET, caller())
        }
        _;
        assembly {
            tstore(_MSG_SENDER_TOFFSET, 0)
        }
    }

    function _msgSender() private view returns (address msgSender) {
        msgSender = _tloadMsgSender();
        if (msgSender == address(0)) {
            msgSender = msg.sender;
        }
    }

    function _tloadMsgSender() private view returns (address msgSender) {
        assembly {
            msgSender := tload(_MSG_SENDER_TOFFSET)
        }
    }

    function _map_msl(IMultiSourceLoanV2.Loan calldata _loan) private pure returns (IMultiSourceLoan.Loan memory) {
        uint256 totalTranches = _loan.source.length;
        IMultiSourceLoan.Tranche[] memory tranche = new IMultiSourceLoan.Tranche[](totalTranches);
        for (uint256 i = 0; i < totalTranches;) {
            tranche[i] = IMultiSourceLoan.Tranche(
                _loan.source[i].loanId,
                0,
                _loan.source[i].principalAmount,
                _loan.source[i].lender,
                _loan.source[i].accruedInterest,
                _loan.source[i].startTime,
                _loan.source[i].aprBps
            );
            unchecked {
                ++i;
            }
        }
        return IMultiSourceLoan.Loan(
            _loan.borrower,
            _loan.nftCollateralTokenId,
            _loan.nftCollateralAddress,
            _loan.principalAddress,
            _loan.principalAmount,
            _loan.startTime,
            _loan.duration,
            tranche,
            0
        );
    }

    fallback() external payable {}

    receive() external payable {}
}
