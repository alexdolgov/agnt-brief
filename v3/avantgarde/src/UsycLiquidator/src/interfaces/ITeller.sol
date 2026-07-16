pragma solidity >=0.8.0;

interface ITeller {
    function buy(uint256 _amount) external returns (uint256);
    function sell(uint256 _amount) external returns (uint256);
    function buyPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);
    function sellPreview(
        uint256 _amount
    ) external view returns (uint256 payout, uint256 fee, int256 price);
}
