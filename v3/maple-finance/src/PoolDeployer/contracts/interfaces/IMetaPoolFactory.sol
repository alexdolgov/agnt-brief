// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface IMetaPoolFactory {

    function deploy_plain_pool(string calldata _name, string calldata _symbol, address[4] calldata _coins, uint256 _A, uint256 _fee, uint256 _asset_type, uint256 _implementation_idx) external returns (address);

}