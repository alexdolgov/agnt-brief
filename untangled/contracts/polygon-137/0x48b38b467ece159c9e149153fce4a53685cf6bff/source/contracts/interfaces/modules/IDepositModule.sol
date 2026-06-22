pragma solidity 0.8.21;

interface IDepositModule {
    function request(address caller, address receiver, uint256 assets) external;

    function settle(uint256 assets, uint256 rate) external;

    function claim(address receiver, uint256 shares) external;

    function claimable(
        address receiver
    ) external view returns (uint256, uint256);
}
