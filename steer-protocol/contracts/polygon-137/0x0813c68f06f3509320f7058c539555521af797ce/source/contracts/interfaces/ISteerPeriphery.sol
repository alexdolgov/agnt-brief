// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;
import "./IVaultRegistry.sol";
import "./IStrategyRegistry.sol";
import "./IMultiPositionManager.sol";

interface ISteerPeriphery {
    function vaultsByStrategy(
        uint256 _strategyId
    ) external view returns (IVaultRegistry.VaultData[] memory);

    function strategiesByCreator(
        address _address
    ) external view returns (IStrategyRegistry.RegisteredStrategy[] memory);

    function deposit(
        address _vaultAddress,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    ) external;

    function vaultDetailsByAddress(
        address _vault
    )
        external
        view
        returns (IMultiPositionManager.VaultDetails memory details);

    function vaultBalancesByAddressWithFees(
        address _vault
    ) external returns (IMultiPositionManager.VaultBalance memory balances);

    function createVaultAndStrategy(
        address strategyCreator,
        string memory name,
        string memory execBundle,
        uint128 maxGasCost,
        uint128 maxGasPerAction,
        bytes memory _params,
        string memory _beaconName,
        address vaultManager,
        string memory _payloadIpfs
    ) external payable returns (uint256 tokenId, address newVault);

    function createVaultAndDepositGas(
        uint256 tokenId,
        bytes memory params,
        string memory beaconName,
        address vaultManager,
        string memory payloadIpfs
    ) external payable returns (address newVault);
}
