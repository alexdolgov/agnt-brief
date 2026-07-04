// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "../../core/interfaces/ICofferErc20.sol";

interface ICoUSD is ICofferErc20 {
    ////// Errors

    // Supply Controller Errors
    error ErrorNotSupplyController();
    error ErrorNotPendingSupplyController();

    // Supply Balance Errors
    error ErrorInsufficientUnderlyingBalance(bytes32 bitcoinAddress, uint256 available, uint256 required);
    error ErrorInsufficientUnderlyingHoldingBalance(
        bytes32 bitcoinAddress,
        address ethereumAddress,
        uint256 available,
        uint256 required
    );

    error ErrorInsufficientCredit(bytes32 bitcoinAddress, uint256 available, uint256 required);
    error ErrorNotEnoughForFee(bytes32 bitcoinAddress, uint256 value, uint256 feeValue);

    ////// Events

    // Price Oracle Events
    event PriceOracleChanged(address indexed oldPriceOracle, address indexed newPriceOracle);
    event PriceUnitChanged(uint256 oldPriceUnit, uint256 newPriceUnit);

    // Rate Events
    event BorrowRateChanged(uint256 oldBorrowRate, uint256 newBorrowRate);
    event LiquidateThresholdChanged(uint256 oldLiquidateThreshold, uint256 newLiquidateThreshold);
    event AutoRepayThresholdChanged(uint256 oldAutoRepayThreshold, uint256 newAutoRepayThreshold);
    event AutoRepayRateChanged(uint256 oldAutoRepayRate, uint256 newAutoRepayRate);

    // Fee Events
    event BorrowFeeRateChanged(uint256 oldBorrowFee, uint256 newBorrowFee);
    event BorrowMinFeeChanged(uint256 oldBorrowFee, uint256 newBorrowFee);
    event RepayFeeRateChanged(uint256 oldRepayFee, uint256 newRepayFee);
    event RepayMinFeeChanged(uint256 oldRepayFee, uint256 newRepayFee);
    event LiquidateFeeRateChanged(uint256 oldLiquidateFee, uint256 newLiquidateFee);
    event FeeReceiverChanged(address indexed oldFeeReceiver, address indexed newFeeReceiver);

    // Supply Controller Events
    event SupplyControllerTransferred(address indexed oldSupplyController, address indexed newSupplyController);

    // Supply Balance Events
    event SupplyIncreased(string indexed bitcoinAddress, address indexed to, uint256 value);
    event SupplyDecreased(string indexed bitcoinAddress, address indexed from, uint256 value);

    // Borrow/Repay/Liquidate Events
    event BorrowAsset(string indexed bitcoinAddress, address indexed to, uint256 value);
    event RepayAsset(string indexed bitcoinAddress, address indexed from, uint256 value);
    event LiquidateAsset(
        string indexed bitcoinAddress,
        string indexed liquidatorBitcoinAddress,
        address indexed liquidatorEthereumAddress,
        uint256 liquidateValue,
        uint256 unpaidValue
    );

    function transferSupplyController(address _newSupplyController) external;
    function acceptSupplyController() external;

    function holdingDebtBalanceOf(string memory _bitcoinAddress) external view returns (uint256);
    function underlyingBalanceOf(string memory _owner) external view returns (uint256);
    function underlyingTotalSupply() external view returns (uint256);

    function setFeeReceiver(address _feeReceiver) external;
    function getFeeReceiver() external view returns (address);

    function depositCollateral(string memory _bitcoinAddress, uint256 _bitcoinValue) external returns (bool success);
    function withdrawCollateral(string memory _bitcoinAddress, uint256 _bitcoinValue) external returns (bool success);

    function borrowAsset(
        string memory _bitcoinAddress,
        uint256 _cousdValue,
        uint256 _borrowFee,
        address _ethereumAddress
    ) external returns (bool success);

    function repayAsset(
        string memory _bitcoinAddress,
        uint256 _cousdValue,
        uint256 _repayFee,
        address _ethereumAddress
    ) external returns (bool success);

    function liquidateAsset(
        string memory _bitcoinAddress,
        string memory _liquidatorBitcoinAddress,
        uint256 _liquidateFee,
        address _ethereumAddress
    ) external returns (bool success);

    function freezeAddress(address _addr) external;
    function unfreezeAddress(address _addr) external;
    function wipeFrozenAddress(address _addr) external;
}
