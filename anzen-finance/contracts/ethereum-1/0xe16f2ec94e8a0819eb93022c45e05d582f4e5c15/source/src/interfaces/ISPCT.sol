// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface ISPCT {
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed user, uint256 amount, uint256 timestamp);
    event Deposit(address indexed user, uint256 amount, uint256 timestamp);
    event Execute(uint256 amount, uint256 timestamp);
    event InterestsDistribute(uint256 amount, uint256 fromTime, uint256 toTime);
    event Mint(address indexed user, uint256 amount, uint256 timestamp);
    event Paused(address account);
    event Redeem(address indexed user, uint256 amount, uint256 timestamp);
    event Repay(uint256 amount, uint256 timestamp);
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);
    event SharesBurnt(
        address indexed account, uint256 preRebaseTokenAmount, uint256 postRebaseTokenAmount, uint256 sharesAmount
    );
    event Transfer(address indexed from, address indexed to, uint256 value);
    event TransferShares(address indexed from, address indexed to, uint256 sharesValue);
    event Unpaused(address account);
    event mintFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event redeemFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event treasuryChanged(address newTreasury, uint256 timestamp);

    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);
    function FEE_COEFFICIENT() external view returns (uint256);
    function POOL_MANAGER_ROLE() external view returns (bytes32);
    function addToWhitelist(address _user) external;
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function balanceOf(address _account) external view returns (uint256);
    function decimals() external pure returns (uint8);
    function deposit(uint256 _amount) external;
    function depositByFiat(address _user, uint256 _amount) external;
    function distributeInterests(uint256 _amount, uint256 _fromTime, uint256 _toTime) external;
    function execute(uint256 _amount) external;
    function executedShares() external view returns (uint256);
    function getPooledUSDByShares(uint256 _sharesAmount) external view returns (uint256);
    function getRoleAdmin(bytes32 role) external view returns (bytes32);
    function getSharesByPooledUSD(uint256 _usdAmount) external view returns (uint256);
    function getTotalPooledUSD() external view returns (uint256);
    function getTotalShares() external view returns (uint256);
    function grantRole(bytes32 role, address account) external;
    function hasRole(bytes32 role, address account) external view returns (bool);
    function isWhitelist(address _user) external view returns (bool);
    function lastDistribution() external view returns (uint256);
    function maxMintFeeRate() external view returns (uint256);
    function maxRedeemFeeRate() external view returns (uint256);
    function mintFeeRate() external view returns (uint256);
    function name() external view returns (string memory);
    function pause() external;
    function paused() external view returns (bool);
    function redeem(uint256 _amount) external;
    function redeemByFiat(address _user, uint256 _amount) external;
    function redeemFeeRate() external view returns (uint256);
    function removeFromWhitelist(address _user) external;
    function renounceRole(bytes32 role, address callerConfirmation) external;
    function repay(uint256 _amount) external;
    function rescueERC20(address token, address to, uint256 amount) external;
    function reserveUSD() external view returns (uint256);
    function revokeRole(bytes32 role, address account) external;
    function setMintFeeRate(uint256 newMintFeeRate) external;
    function setRedeemFeeRate(uint256 newRedeemFeeRate) external;
    function setTreasury(address newTreasury) external;
    function sharesOf(address _account) external view returns (uint256);
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function symbol() external view returns (string memory);
    function totalPooledUSD() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function transferShares(address _recipient, uint256 _sharesAmount) external returns (uint256);
    function treasury() external view returns (address);
    function unpause() external;
    function usdc() external view returns (address);
}
