// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface ICLStableSwapHookFactory {
    struct PoolArray {
        address implementation;
        address oracle_implementation;
        address[] coins;
        uint256[] decimals;
        uint256 n_coins;
        uint8[] asset_types;
    }

    event PlainPoolDeployed(address[] coins, uint256 A, uint256 fee, address deployer);
    event PoolImplementationUpdated(uint256 implementation_index, address implementation);
    event PoolOracleImplementationUpdated(uint256 implementation_index, address implementation);
    event ViewsImplementationUpdated(address implementation);

    function accept_transfer_ownership() external;
    function add_asset_type(uint8 _id, string memory _name) external;
    function admin() external view returns (address);
    function asset_types(uint8 index) external view returns (string memory);
    function commit_transfer_ownership(address _addr) external;
    function deploy_plain_pool(
        string memory _name,
        string memory _symbol,
        address[] memory _coins,
        uint256 _A,
        uint256 _fee,
        uint256 _offpeg_fee_multiplier,
        uint256 _ma_exp_time,
        uint256 _implementation_idx,
        uint8[] memory _asset_types,
        bytes4[] memory _method_ids,
        address[] memory _oracles
    ) external returns (address);
    function fee_receiver() external view returns (address);
    function find_pool_for_coins(address _from, address _to) external view returns (address);
    function find_pool_for_coins(address _from, address _to, uint256 i) external view returns (address);
    function future_admin() external view returns (address);
    function get_A(address _pool) external view returns (uint256);
    function get_admin_balances(address _pool) external view returns (uint256[] memory);
    function get_balances(address _pool) external view returns (uint256[] memory);
    function get_coins(address _pool) external view returns (address[] memory);
    function get_decimals(address _pool) external view returns (uint256[] memory);
    function get_fees(address _pool) external view returns (uint256, uint256);
    function get_implementation_address(address _pool) external view returns (address);
    function get_n_coins(address _pool) external view returns (uint256);
    function get_oracle_implementation_address(address _pool) external view returns (address);
    function get_pool_asset_types(address _pool) external view returns (uint8[] memory);
    function pool_count() external view returns (uint256);
    function pool_factory() external view returns (address);
    function pool_implementations(uint256 index) external view returns (address);
    function pool_list(uint256 index) external view returns (address);
    function pool_manager() external view returns (address);
    function pool_oracle_implementations(uint256 index) external view returns (address);
    function set_fee_receiver(address _fee_receiver) external;
    function set_pool_factory(address _pool_factory) external;
    function set_pool_implementations(uint256 _implementation_index, address _implementation) external;
    function set_pool_oracle_implementations(uint256 _implementation_index, address _implementation) external;
    function set_views_implementation(address _views_implementation) external;
    function views_implementation() external view returns (address);
}
