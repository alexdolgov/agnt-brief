pragma solidity >=0.5.0;

interface IVeloV2Gauge {
    function notifyRewardAmount(uint amount) external;
    function getReward(address account) external;
    function left() external view returns (uint);
    function isPool() external view returns (bool);
    function earned(address account) external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
}
