import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

pragma solidity 0.8.19;

interface IvETH is IERC20Metadata {
    function currentBalance() external view returns (uint256);

    function deposit(
        address _restakedLST,
        address _to,
        uint256 _amount
    ) external;

    function redeem(
        address _restakedLSTToReceive,
        address _to,
        uint256 _vETHToRedeem
    ) external;

    function addRestakedLST(
        address _restakedLST,
        uint256 _vETHPerLST
    ) external;

    function removeRestakedLST(address _restakedLST) external;

    function updatevETHPerLST(
        address _restakedLST,
        uint256 _vETHPerLST
    ) external;

    function updateRouteRestakedLSTTo(
        address _restakedLST,
        address _where
    ) external;

    function setRedemtionActive() external;

    function setRedemtionUnactive() external;

    function addApprovedManager(address _manager) external;

    function removeApprovedManager(address _manager) external;

    function recoverTokens(
        address _to,
        address _token,
        uint256 _amount
    ) external;

    function transferOwnership(address newOwner) external;
}