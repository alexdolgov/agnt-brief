// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@pendle/core-v2/contracts/interfaces/IPActionInfoStatic.sol";
import "@pendle/core-v2/contracts/interfaces/IPActionMiscV3.sol";

import "../../libraries/moolah/SharesMathLib.sol";
import "../../libraries/StorageSlot.sol";

import "../../../interfaces/wbnb/IWBNB.sol";
import "../../../interfaces/lista/IStakeManager.sol";
import "../../../interfaces/moolah/IMoolah.sol";
import "../../../interfaces/moolah/IMoolahCallbacks.sol";
import "../../../interfaces/moolah/IOracle.sol";

import "../../../interfaces/venus/IComptroller.sol";
import "../../../interfaces/venus/IVBep20Delegate.sol";
import "../../../interfaces/venus/INativeTokenGateway.sol";
import "../../../interfaces/venus/IBinanceOracle.sol";
import "../../../interfaces/lista/IStakeManager.sol";
import "../base/StrategyBase.sol";
import {OneInchCallerV6} from "../../swap/OneInchCallerV6.sol";
import {Errors as CustomErrors} from "../../libraries/Errors.sol";

/**
 * @title StrategyMoolah contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool, which
 * manages some assets in lista.
 */
contract StrategyMoolah is
    StrategyBase,
    OneInchCallerV6,
    IMoolahFlashLoanCallback
{
    using SafeERC20 for IERC20;
    using StorageSlot for *;
    using SharesMathLib for uint256;

    uint256 public constant VERSION = 1;

    // ***************Constants*****************

    struct PriceAndPositions {
        uint256 ptPrice;
        uint256 wbnbPrice;
        Position ptPosition;
        Market ptMarket;
    }

    IMoolah private constant MOOLAH =
        IMoolah(0x8F73b65B4caAf64FBA2aF91cC5D4a2A1318E5D8C);
    IOracle private constant MOOLAH_ORACLE_PT =
        IOracle(0x1a438f71bc56514F47142c96A8f580AB5767aC17);

    IStakeManager public constant LISTA_STAKE_MANAGER =
        IStakeManager(0x1adB950d8bB3dA4bE104211D5AB038628e477fE6);

    address private constant PENDLE_ROUTER = 0x888888888889758F76e7103c6CbF23ABbF58F946;
    address private constant PENDLE_YT = 0xBe436f6Ed7Ff7f747AaE1912F88C59549df82158;
    address private constant PENDLE_PT = 0xb84cEC1Ab2af11b530ae0d8594B1493556be49Cd;

    bytes32 internal constant MOOLAH_PT_WBNB_ID =
        0x0e9ce37ed19824e0698b8cf1855bef55cefdc82f37c321c3812d90135f476709;

    // ***************Variables*****************

    uint256 public ptTargetLtv;
    uint256 public ptMaxLtv;

    event EnterPendle(uint256 amount);
    event ExitPendle(uint256 amount);
    event Deposit(address token, uint256 amount);
    event Withdraw(address token, uint256 amount);
    event Borrow(uint256 amount);
    event Stake(uint256 amount);
    event RequestWithdraw(uint256 amount);
    event ClaimWithdraw(uint256 amount);
    event UpdatePtTargetLtv(uint256 newTargetLtv);
    event UpdatePtMaxLtv(uint256 newMaxLtv);

    modifier markInFlashloan() {
        bytes32 flashloanSlot = keccak256("moolah.flashloan");
        flashloanSlot.asUint256().tstore(1);
        _;
    }

    modifier requireInFlashloan() {
        bytes32 flashloanSlot = keccak256("moolah.flashloan");
        if (flashloanSlot.asUint256().tload() == 0)
            revert CustomErrors.InvalidCaller();
        _;
        flashloanSlot.asUint256().tstore(0);
    }

    function initialize(
        bytes calldata _initBytes
    ) external initializer {
        (
            address admin_,
            address rebalancer_,
            uint256 ptTargetLtv_,
            uint256 ptMaxLtv_
        ) = abi.decode(_initBytes, (address, address, uint256, uint256));
        if (admin_ == address(0)) revert CustomErrors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert CustomErrors.InvalidRebalancer();
        __Ownable_init(admin_);

        rebalancer = rebalancer_;
        vault = msg.sender;

        ptTargetLtv = ptTargetLtv_;
        ptMaxLtv = ptMaxLtv_;
    }

    function updatePtTargetLtv(uint256 _ptTargetLtv) external onlyOwner {
        if (_ptTargetLtv == 0) revert CustomErrors.InvalidLimit();
        ptTargetLtv = _ptTargetLtv;
        emit UpdatePtTargetLtv(ptTargetLtv);
    }

    function updateSlisBnbMaxLtv(uint256 _ptMaxLtv) external onlyOwner {
        if (_ptMaxLtv == 0) revert CustomErrors.InvalidLimit();
        ptMaxLtv = _ptMaxLtv;
        emit UpdatePtMaxLtv(ptMaxLtv);
    }

    function onTransferIn(
        address _token,
        uint256 _amount
    ) external onlyVault returns (bool) {
        if (_token != address(SlisBNB)) revert CustomErrors.InvalidAsset();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function getNetAssets() external virtual override returns (uint256) {
        return getCurrentNetAssets();
    }

    function getSlisBnbByBnb(uint256 _amount) public view returns (uint256) {
        return LISTA_STAKE_MANAGER.convertBnbToSnBnb(_amount);
    }

    function getBnbBySlisBnb(uint256 _amount) public view returns (uint256) {
        return LISTA_STAKE_MANAGER.convertSnBnbToBnb(_amount);
    }

    function getPositionStatus()
        internal
        view
        returns (PriceAndPositions memory)
    {
        PriceAndPositions memory priceAndPositions_;

        // Get current pt_clisBNB postion
        priceAndPositions_.ptPosition = MOOLAH.position(
            Id.wrap(MOOLAH_PT_WBNB_ID),
            address(this)
        );

        // Get current pt_clisBNB market
        priceAndPositions_.ptMarket = MOOLAH.market(Id.wrap(MOOLAH_PT_WBNB_ID));

        // Get current pt_clisBNB price
        priceAndPositions_.ptPrice = MOOLAH_ORACLE_PT.peek(address(PENDLE_PT));
        priceAndPositions_.wbnbPrice = MOOLAH_ORACLE_PT.peek(address(WBNB));

        return priceAndPositions_;
    }

    function _enterPendle(uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(SlisBNB).balanceOf(address(this));
        }
        IERC20(SlisBNB).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
        TokenInput memory tokenInput_;
        tokenInput_.tokenIn = SlisBNB;

        tokenInput_.tokenMintSy = SlisBNB;
        IPActionMiscV3(PENDLE_ROUTER).mintPyFromToken(
            address(this),
            PENDLE_YT,
            _amount,
            tokenInput_
        );
        emit EnterPendle(_amount);
    }

    function enterPendle(uint256 _amount) external onlyRebalancer {
        _enterPendle(_amount);
    }

    function _exitPendle(uint256 _amount) internal {
        IERC20(PENDLE_PT).safeIncreaseAllowance(PENDLE_ROUTER, _amount);
        IERC20(PENDLE_YT).safeIncreaseAllowance(PENDLE_ROUTER, _amount);

        TokenOutput memory tokenOutput_;
        tokenOutput_.tokenOut = SlisBNB;
        tokenOutput_.minTokenOut = getSlisBnbByBnb((_amount * 9999) / 10000);
        tokenOutput_.tokenRedeemSy = SlisBNB;
        IPActionMiscV3(PENDLE_ROUTER).redeemPyToToken(
            address(this),
            PENDLE_YT,
            _amount,
            tokenOutput_
        );
        emit ExitPendle(_amount);
    }

    function exitPendle(uint256 _amount) external onlyRebalancer {
        _exitPendle(_amount);
    }

    function _maxBorrow(
        PriceAndPositions memory _position
    ) internal view returns (uint256 maxBorrow_) {
        maxBorrow_ = _position.ptPosition.collateral * _position.ptPrice;
        maxBorrow_ = (maxBorrow_ * ptMaxLtv) / 1e18;
        maxBorrow_ =
            maxBorrow_ /
            _position.wbnbPrice -
            uint256(_position.ptPosition.borrowShares).toAssetsUp(
                _position.ptMarket.totalBorrowAssets,
                _position.ptMarket.totalBorrowShares
            );
    }

    function maxBorrow() external view returns (uint256 maxBorrow_) {
        PriceAndPositions memory position_ = getPositionStatus();
        maxBorrow_ = _maxBorrow(position_);
    }

    function targetBorrow() external view returns (uint256 targetBorrow_) {
        PriceAndPositions memory position_ = getPositionStatus();

        targetBorrow_ = position_.ptPosition.collateral * position_.ptPrice;
        targetBorrow_ = (targetBorrow_ * ptTargetLtv) / 1e18;
        targetBorrow_ = targetBorrow_ / position_.wbnbPrice;
    }

    function _deposit(address _token, uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(_token).balanceOf(address(this));
        }
        IERC20(_token).safeIncreaseAllowance(address(MOOLAH), _amount);
        if (_token == address(PENDLE_PT)) {
            MOOLAH.supplyCollateral(
                MOOLAH.idToMarketParams(Id.wrap(MOOLAH_PT_WBNB_ID)),
                _amount,
                address(this),
                ""
            );
        } else {
            revert CustomErrors.InvalidAsset();
        }
        emit Deposit(_token, _amount);
    }

    function deposit(address _token, uint256 _amount) external onlyRebalancer {
        _deposit(_token, _amount);
    }

    function _withdraw(address _token, uint256 _amount) internal {
        if (_token == address(PENDLE_PT)) {
            MOOLAH.withdrawCollateral(
                MOOLAH.idToMarketParams(Id.wrap(MOOLAH_PT_WBNB_ID)),
                _amount,
                address(this),
                address(this)
            );
        } else {
            revert CustomErrors.InvalidAsset();
        }

        // Ensure security by maxBorrow()
        _maxBorrow(getPositionStatus());
        emit Withdraw(_token, _amount);
    }

    function withdraw(address _token, uint256 _amount) external onlyRebalancer {
        _withdraw(_token, _amount);
    }

    function _borrow(uint256 _fromPt) internal {
        PriceAndPositions memory position_ = getPositionStatus();
        uint256 ptMaxBorrow_ = _maxBorrow(position_);

        if (_fromPt > ptMaxBorrow_) revert CustomErrors.InvalidLimit();
        if (_fromPt != 0) {
            MOOLAH.borrow(
                MOOLAH.idToMarketParams(Id.wrap(MOOLAH_PT_WBNB_ID)),
                _fromPt,
                0,
                address(this),
                address(this)
            );
        }

        emit Borrow(_fromPt);
    }

    function borrow(uint256 _fromPt) external onlyRebalancer {
        _borrow(_fromPt);
    }

    function _repay(uint256 _fromPt) internal {
        IERC20(WBNB).safeIncreaseAllowance(address(MOOLAH), _fromPt);
        if (_fromPt != 0) {
            MOOLAH.repay(
                MOOLAH.idToMarketParams(Id.wrap(MOOLAH_PT_WBNB_ID)),
                _fromPt,
                0,
                address(this),
                ""
            );
        }
    }

    function repay(uint256 _fromPt) external onlyRebalancer {
        _repay(_fromPt);
    }

    function _stake(uint256 _amountBnb) internal {
        _unwrap(_amountBnb);
        LISTA_STAKE_MANAGER.deposit{value: _amountBnb}();
        emit Stake(_amountBnb);
    }

    function _wrap(uint256 _amountBnb) internal {
        IWBNB(WBNB).deposit{value: _amountBnb}();
    }

    function wrap(uint256 _amountBnb) external onlyRebalancer {
        _wrap(_amountBnb);
    }

    function _unwrap(uint256 _amountWbnb) internal {
        IWBNB(WBNB).withdraw(_amountWbnb);
    }

    function unwrap(uint256 _amountWbnb) external onlyRebalancer {
        _unwrap(_amountWbnb);
    }

    function _swapToken(
        address _from,
        address _to,
        uint256 _tokenIn,
        uint256 _minOut,
        bytes memory _payload
    ) internal {
        if (
            (_from == SlisBNB && _to == WBNB) ||
            (_from == WBNB && _to == SlisBNB)
        ) {
            executeSwap(_tokenIn, _from, _to, _payload, _minOut);
        } else {
            revert CustomErrors.InvalidAsset();
        }
    }

    function swapToken(
        address _from,
        address _to,
        uint256 _tokenIn,
        uint256 _minOut,
        bytes memory _payload
    ) external onlyRebalancer {
        _swapToken(_from, _to, _tokenIn, _minOut, _payload);
    }

    function requestWithdraw(uint256 _amountInSlisBnb) external onlyRebalancer {
        IStakeManager.WithdrawalRequest[] memory requests_ = LISTA_STAKE_MANAGER
            .getUserWithdrawalRequests(address(this));
        if (requests_.length != 0) revert CustomErrors.UnSupportedOperation();
        IERC20(SlisBNB).safeIncreaseAllowance(
            address(LISTA_STAKE_MANAGER),
            _amountInSlisBnb
        );
        LISTA_STAKE_MANAGER.requestWithdraw(_amountInSlisBnb);
        emit RequestWithdraw(_amountInSlisBnb);
    }

    function claimWithdraw() external onlyRebalancer {
        IStakeManager.WithdrawalRequest[] memory requests_ = LISTA_STAKE_MANAGER
            .getUserWithdrawalRequests(address(this));
        if (requests_.length == 0) revert CustomErrors.UnSupportedOperation();
        LISTA_STAKE_MANAGER.claimWithdraw(0);
        emit ClaimWithdraw(0);
    }

    function getUnstakingBnb()
        public
        view
        returns (bool isClaimable_, uint256 amount_)
    {
        IStakeManager.WithdrawalRequest[] memory requests_ = LISTA_STAKE_MANAGER
            .getUserWithdrawalRequests(address(this));
        if (requests_.length == 0) return (false, 0);
        (isClaimable_, amount_) = LISTA_STAKE_MANAGER.getUserRequestStatus(
            address(this),
            0
        );
    }

    function getPosition()
        external
        view
        returns (
            uint256 ptDeposit_,
            uint256 ptBorrow_,
            uint256 ptOraclePrice,
            uint256 bnbOraclePrice_
        )
    {
        PriceAndPositions memory position_ = getPositionStatus();
        ptDeposit_ = position_.ptPosition.collateral;
        ptBorrow_ = uint256(position_.ptPosition.borrowShares).toAssetsUp(
            position_.ptMarket.totalBorrowAssets,
            position_.ptMarket.totalBorrowShares
        );

        ptOraclePrice = position_.ptPrice;
        bnbOraclePrice_ = position_.wbnbPrice;
    }

    function getCurrentNetAssets() public view returns (uint256) {
        PriceAndPositions memory position_ = getPositionStatus();
        uint256 ptDeposit_ = position_.ptPosition.collateral;
        uint256 ptBorrow_ = uint256(position_.ptPosition.borrowShares)
            .toAssetsUp(
                position_.ptMarket.totalBorrowAssets,
                position_.ptMarket.totalBorrowShares
            );

        uint256 totalPt_ = IERC20(PENDLE_PT).balanceOf(address(this)) +
            ptDeposit_;
        (, uint256 unstakingBnbAmount_) = getUnstakingBnb();

        totalPt_ +=
            IERC20(WBNB).balanceOf(address(this)) +
            address(this).balance +
            unstakingBnbAmount_;

        totalPt_ -= ptBorrow_;

        return
            getSlisBnbByBnb(totalPt_) +
            IERC20(SlisBNB).balanceOf(address(this));
    }

    function _multiCall(
        uint8[] memory _microOps,
        bytes[] memory _microOpsData
    ) internal {
        if (_microOps.length != _microOpsData.length)
            revert CustomErrors.InvalidParams();
        for (uint256 i = 0; i < _microOps.length; i++) {
            if (_microOps[i] == 0) {
                uint256 amount_ = abi.decode(_microOpsData[i], (uint256));
                _enterPendle(amount_);
            } else if (_microOps[i] == 1) {
                uint256 amount_ = abi.decode(_microOpsData[i], (uint256));
                _exitPendle(amount_);
            } else if (_microOps[i] == 2) {
                (address token_, uint256 amount_) = abi.decode(
                    _microOpsData[i],
                    (address, uint256)
                );
                _deposit(token_, amount_);
            } else if (_microOps[i] == 3) {
                (address token_, uint256 amount_) = abi.decode(
                    _microOpsData[i],
                    (address, uint256)
                );
                _withdraw(token_, amount_);
            } else if (_microOps[i] == 4) {
                uint256 fromPt_ = abi.decode(_microOpsData[i], (uint256));
                _borrow(fromPt_);
            } else if (_microOps[i] == 5) {
                uint256 fromPt_ = abi.decode(_microOpsData[i], (uint256));
                _repay(fromPt_);
            } else if (_microOps[i] == 6) {
                uint256 amount_ = abi.decode(_microOpsData[i], (uint256));
                _stake(amount_);
            } else if (_microOps[i] == 7) {
                uint256 amount_ = abi.decode(_microOpsData[i], (uint256));
                _wrap(amount_);
            } else if (_microOps[i] == 8) {
                uint256 amount_ = abi.decode(_microOpsData[i], (uint256));
                _unwrap(amount_);
            } else if (_microOps[i] == 9) {
                (
                    address from_,
                    address to_,
                    uint256 tokenIn_,
                    uint256 minOut_,
                    bytes memory payload_
                ) = abi.decode(
                        _microOpsData[i],
                        (address, address, uint256, uint256, bytes)
                    );
                _swapToken(from_, to_, tokenIn_, minOut_, payload_);
            } else {
                revert CustomErrors.InvalidParams();
            }
        }
    }

    function flashLoan(
        uint256 _amount,
        bytes calldata _payload
    ) external onlyRebalancer markInFlashloan {
        MOOLAH.flashLoan(WBNB, _amount, _payload);
    }

    function onMoolahFlashLoan(
        uint256 _assets,
        bytes calldata _data
    ) external requireInFlashloan {
        require(msg.sender == address(MOOLAH), "Invalid sender");

        (uint8[] memory microOps_, bytes[] memory microOpsData_) = abi.decode(
            _data,
            (uint8[], bytes[])
        );
        _multiCall(microOps_, microOpsData_);
        IERC20(WBNB).safeIncreaseAllowance(address(MOOLAH), _assets);
    }
}
