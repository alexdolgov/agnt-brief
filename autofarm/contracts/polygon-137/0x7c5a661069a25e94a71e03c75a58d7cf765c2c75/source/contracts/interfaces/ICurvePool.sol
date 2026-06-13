pragma solidity >= 0.5.0;

interface ICurvePool {
    function get_dy(int128 i, int128 j, uint256 _dx) external view returns (uint256);
}

