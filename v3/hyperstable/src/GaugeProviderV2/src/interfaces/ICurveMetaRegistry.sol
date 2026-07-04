// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ICurveMetaRegistry {
    function is_registered(address _pool) external view returns (bool);
    function get_n_coins(address _pool) external view returns (uint256);
    function get_coins(address _pool) external view returns (address[8] memory);
    function get_lp_token(address _pool) external view returns (address);
    function get_gauge(address _pool) external view returns (address);
}
