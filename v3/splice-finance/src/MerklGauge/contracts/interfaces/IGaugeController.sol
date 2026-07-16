// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IGaugeController {
    function checkpoint_gauge(address gauge) external;

    function gauge_relative_weight(address gauge, uint256 time) external view returns (uint256);

    function voting_escrow() external view returns (address);

    function token() external view returns (address);

    function add_type(string calldata name, uint256 weight) external;

    function change_type_weight(int128 typeId, uint256 weight) external;

    function add_gauge(address gauge, int128 gaugeType) external;

    function n_gauge_types() external view returns (int128);

    function gauge_types(address gauge) external view returns (int128);

    function admin() external view returns (address);

    function gauge_exists(address gauge) external view returns (bool);

    function time_weight(address gauge) external view returns (uint256);
}
