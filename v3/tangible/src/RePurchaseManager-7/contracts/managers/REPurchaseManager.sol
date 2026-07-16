// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "../constants/addresses.sol";
import "../constants/roles.sol";
import "../interfaces/ITokenSwap.sol";
import "../interfaces/ITreasury.sol";
import "../interfaces/IPriceOracle.sol";
import "../interfaces/ITreasuryTracker.sol";
import "../interfaces/IRWACalculator.sol";
import "../tangibleInterfaces/ITangibleMarketplace.sol";
import "../tangibleInterfaces/IInstantLiquidity.sol";
import "../tokens/interfaces/ITangibleERC20.sol";
import "../AddressAccessor.sol";
import "./PurchaseManager.sol";

contract RePurchaseManager is PurchaseManager, IERC721Receiver {
    using SafeERC20 for IERC20;

    address private latestReceivedNFT;
    uint256 private latestReceivedToken;
    address public reTnft;

    struct HelperStruct {
        address rwaCalculator;
        address treasury;
        IERC20 paymentToken;
        uint256 amount;
        bool inRange;
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setRETnft(address tnft) external onlyRole(DEFAULT_ADMIN_ROLE) {
        reTnft = tnft;
    }

    //need to add second part - to convert treasury token to payment token
    function _convertTreasuryTokenToPayment(
        IERC20 paymentToken,
        uint256 amountReserveToken,
        bool instantLiquidity_,
        uint256 itemPrice
    ) internal {
        (
            address instantLiquidity,
            address marketplace,
            address tokenSwap,
            address underlying
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        INSTANT_LIQUIDITY_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TOKEN_SWAP_ADDRESS,
                        UNDERLYING_ADDRESS
                    )
                ),
                (address, address, address, address)
            );
        IERC20(underlying).approve(tokenSwap, amountReserveToken);
        ITokenSwap(tokenSwap).exchange(
            underlying,
            address(paymentToken),
            amountReserveToken,
            itemPrice,
            ITokenSwap.EXCHANGE_TYPE.EXACT_OUTPUT
        );

        if (!instantLiquidity_) {
            paymentToken.approve(marketplace, itemPrice);
        } else {
            paymentToken.approve(instantLiquidity, itemPrice);
        }
    }

    function _checkPaymentTokenAndAmountNeeded(
        IERC20 paymentToken,
        uint256 amount
    ) internal view returns (uint256 reserveAmount) {
        (address tokenSwap, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TOKEN_SWAP_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address)
        );

        reserveAmount = ITokenSwap(tokenSwap).quoteIn(
            underlying,
            address(paymentToken),
            amount
        );
    }

    function purchaseTnft(
        uint256 fingerprint,
        uint256 tokenId,
        uint256 _years,
        bool onlyLock
    ) external onlyRole(CONTROLLER_ROLE) {
        //check payment token and swap if necessary
        HelperStruct memory hs;
        (hs.rwaCalculator, hs.treasury) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(RWA_CALCULATOR_ADDRESS, TREASURY_ADDRESS)
            ),
            (address, address)
        );

        (hs.paymentToken, hs.amount, hs.inRange) = IRWACalculator(
            hs.rwaCalculator
        ).fetchPaymentTokenAndAmountTnft(
                reTnft,
                fingerprint,
                tokenId,
                _years,
                tokenId == 0 ? true : false
            );
        require(hs.inRange, "price above range");
        uint256 reserveAmount = _checkPaymentTokenAndAmountNeeded(
            hs.paymentToken,
            hs.amount
        );

        _validatePurchase(reserveAmount);

        ITreasury(hs.treasury).executeOperation(
            reserveAmount,
            address(this),
            abi.encodeWithSelector(
                RePurchaseManager.purchaseTnftCb.selector,
                hs.paymentToken,
                fingerprint,
                tokenId,
                _years,
                hs.amount,
                reserveAmount,
                onlyLock
            )
        );
    }

    function purchaseTnftCb(
        IERC20 paymentToken,
        uint256 fingerprint,
        uint256 tokenId,
        uint256 _years,
        uint256 amountToPay,
        uint256 reserveAmount,
        bool onlyLock
    ) external {
        (address underlying, address marketplace, address treasury) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNDERLYING_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TREASURY_ADDRESS
                    )
                ),
                (address, address, address)
            );
        require(msg.sender == treasury, "not invoked by treasury");
        //take the underlying from treasury
        IERC20(underlying).safeTransferFrom(
            treasury,
            address(this),
            reserveAmount
        );
        //convert to usdc
        _convertTreasuryTokenToPayment(
            paymentToken,
            reserveAmount,
            false,
            amountToPay
        );

        if (tokenId == 0) {
            ITangibleMarketplace(marketplace).buyUnminted(
                ITangibleNFT(reTnft),
                fingerprint,
                _years,
                onlyLock
            );
        } else {
            ITangibleMarketplace(marketplace).buy(
                ITangibleNFT(reTnft),
                tokenId,
                _years
            );
        }
        //send to treasury
        IERC721(reTnft).safeTransferFrom(
            address(this),
            treasury,
            latestReceivedToken
        );
        // update records
        ITreasury(treasury).updateTrackerTnftExt(
            reTnft,
            latestReceivedToken,
            true
        );
    }

    function purchaseFtnft(
        address ftnft,
        uint256 fractTokenId,
        uint256 share
    ) external onlyRole(CONTROLLER_ROLE) {
        HelperStruct memory hs;
        (address rwaCalculator, address treasury, address marketplace) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        RWA_CALCULATOR_ADDRESS,
                        TREASURY_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS
                    )
                ),
                (address, address, address)
            );
        (hs.paymentToken, hs.amount, hs.inRange) = IRWACalculator(rwaCalculator)
            .fetchPaymentTokenAndAmountFtnft(ftnft, fractTokenId, share);
        //we neglect inRange if it is initial sale of house
        if (
            ITangibleMarketplace(marketplace)
                .factory()
                .fractionToTnftAndId(ITangibleFractionsNFT(ftnft))
                .initialSaleDone
        ) {
            require(hs.inRange, "price above range");
        }
        uint256 reserveAmount = _checkPaymentTokenAndAmountNeeded(
            hs.paymentToken,
            hs.amount
        );

        _validatePurchase(reserveAmount);

        require(
            reTnft == _fetchReAddressFromFraction(ftnft),
            "fraction is not re!!"
        );

        ITreasury(treasury).executeOperation(
            reserveAmount,
            address(this),
            abi.encodeWithSelector(
                RePurchaseManager.purchaseFtnftCb.selector,
                ftnft,
                hs.paymentToken,
                fractTokenId,
                share,
                reserveAmount,
                hs.amount
            )
        );
    }

    function purchaseFtnftCb(
        address ftnft,
        IERC20 paymentToken,
        uint256 fractTokenId,
        uint256 share,
        uint256 reserveAmount,
        uint256 amountToPay
    ) external {
        (address underlying, address marketplace, address treasury) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNDERLYING_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TREASURY_ADDRESS
                    )
                ),
                (address, address, address)
            );

        require(msg.sender == treasury, "not invoked by treasury");
        //take the underlying from treasury
        IERC20(underlying).safeTransferFrom(
            treasury,
            address(this),
            reserveAmount
        );
        //convert to usdc
        _convertTreasuryTokenToPayment(
            paymentToken,
            reserveAmount,
            false,
            amountToPay
        );
        IFactoryExt factory = ITangibleMarketplace(marketplace).factory();
        //check if this ftnft is in initailSale - that means when bought
        //you can't move the token unless sale is complete
        //that is why actuall purchase must be done from
        //treasury in else branch
        if (
            factory
                .fractionToTnftAndId(ITangibleFractionsNFT(ftnft))
                .initialSaleDone
        ) {
            ITangibleMarketplace(marketplace).buyFraction(
                ITangibleFractionsNFT(ftnft),
                fractTokenId,
                share
            );

            //send to treasury
            IERC721(ftnft).safeTransferFrom(
                address(this),
                treasury,
                latestReceivedToken
            );
            //update records
            ITreasury(treasury).updateTrackerFtnftExt(
                ftnft,
                latestReceivedToken,
                true
            );
        } else {
            //send converted token back to treasury and buy it from there
            paymentToken.safeTransfer(treasury, amountToPay);

            ITreasury(treasury).purchaseReInitialSale(
                paymentToken,
                ftnft,
                fractTokenId,
                share,
                amountToPay
            );
        }
        //
    }

    function _fetchReAddressFromFraction(address ftnft)
        internal
        view
        returns (address reAddress)
    {
        address marketplace = addressProvider.getAddress(
            TANGIBLE_MARKETPLACE_ADDRESS
        );
        IFactoryExt factory = ITangibleMarketplace(marketplace).factory();
        reAddress = address(
            factory.fractionToTnftAndId(ITangibleFractionsNFT(ftnft)).tnft
        );
    }

    function onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return _onERC721Received(operator, seller, tokenId, data);
    }

    function _onERC721Received(
        address, /*operator*/
        address, /*seller*/
        uint256 tokenId, /*tokenId*/
        bytes calldata /*data*/
    ) private returns (bytes4) {
        latestReceivedNFT = msg.sender;
        latestReceivedToken = tokenId;
        return IERC721Receiver.onERC721Received.selector;
    }
}
