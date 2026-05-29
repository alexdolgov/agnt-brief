// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IUnderlyingVault {
    function burn(address account, uint256 shares) external;
    function mint(uint256 shares, address receiver) external returns (uint256);
    function withdraw(uint256 assets, address receiver, address /*owner*/ ) external returns (uint256);

    function receiveRewards(uint256 amount) external;
    function borrow(uint256 amount) external;
    function payBack(uint256 amount, uint256 incentives) external;
    function enforcePayBack(uint256 amount, bytes calldata enforceData) external returns (uint256);

    function transfer(address user, uint256 amount) external returns (bool);
    function decimals() external returns (uint256);

    function retentionRefund(uint256 amount, bytes memory enforceData) external view returns (uint256);
    function balanceOf(address user) external view returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function borrowableAmount(address strategy) external view returns (uint256);
    function cap(address strategy) external view returns (uint256);
    function totalAssets() external view returns (uint256);
    function totalSupply() external view returns (uint256);

    function loaned(address strategy) external view returns (uint256);

    function underlying() external view returns (IERC20);

    function initialize(address _asset, address _enforceHub, string calldata _name, string calldata _symbol) external;

    function addOperator(address _newOperator) external;

    function addKeeper(address _newKeeper) external;

    function addStrategy(address _newOperator, uint256 _cap) external;

    function updateDebt(address _strategy, uint256 _amount, bool _substract) external;

    function hasRole(bytes32 role, address account) external view returns (bool);

    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);
    event ReceiveRewards(address indexed sender, uint256 amount, uint256 totalAssets, uint256 totalSupply);
    event Borrowed(address indexed to, uint256 amount, uint256 totalDebt);
    event PayBack(address indexed from, uint256 amount, uint256 incentives, uint256 totalDebt);
    event EnforcePayback(uint256 amount, uint256 retention, uint256 totalAssets, uint256 totalDebt);

    /* -------------------------------------------------------------------------- */
    /*                                    ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error NotEnoughFunds();
    error CallerIsNotStrategy();
    error FailSendETH();
    error NotRightCaller();
    error CapReached();
    error StalePrice();
    error InvalidPrice();
    error StalePriceUpdate();
    error SequencerDown();
}
