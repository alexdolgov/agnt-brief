pragma solidity 0.8.21;

interface IHook {
    function onDeposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) external;

    function onWithdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) external;

    function onTransfer(address from, address to, uint256 shares) external;

    function portfolioValue() external view returns (uint256);

    function setFee(uint256 newFee) external;

    function claimFee() external returns (address, uint256);
}
