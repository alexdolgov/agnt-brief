pragma solidity 0.8.21;

interface IWithdrawModule {
    function request(
        address caller,
        address receiver,
        address owner,
        uint256 shares
    ) external;

    function claim(address receiver, uint256 shares) external;

    function claimable(
        address receiver
    ) external view returns (uint256, uint256);

    function settle(uint256 shares, uint256 rate) external;
}
