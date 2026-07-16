// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
pragma abicoder v2;

import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "./AlphaProVault.sol";

// Errors
error APV_NotPendingGovernance();
error APV_AllowedFactories();
error APV_PoolMismatch();

/**
 * @title   Alpha Pro Vault Factory
 * @notice  A factory contract for creating new vaults
 */
contract AlphaProVaultFactory {
    event NewVault(address vault);
    event UpdateProtocolFee(uint24 protocolFee);

    event UpdateGovernance(address governance);

    address public immutable template;
    address[] public vaults;
    mapping(address => bool) public isVault;
    mapping(address => bool) public allowedFactories;

    address public governance;
    address public pendingGovernance;
    uint24 public protocolFee;

    /**
     * @param _template A deployed AlphaProVault contract
     * @param _governance Charm Finance governance address
     * @param _protocolFee Fee multiplied by 1e6. Hard capped at 25%.
     */
    constructor(address _template, address _governance, uint24 _protocolFee) {
        template = _template;
        governance = _governance;
        protocolFee = _protocolFee;
        if (_protocolFee > 25e4) revert APV_ProtocolFee();
    }

    /**
     * @notice Create a new Alpha Pro Vault
     * @param params InitizalizeParams Underlying Uniswap V3 pool address
     */
    function createVault(VaultParams calldata params) external returns (address vaultAddress) {
        IUniswapV3Pool pool = IUniswapV3Pool(params.pool);
        IUniswapV3Factory poolFactory = IUniswapV3Factory(pool.factory());
        if (!allowedFactories[address(poolFactory)]) revert APV_AllowedFactories();
        if (params.pool != poolFactory.getPool(pool.token0(), pool.token1(), pool.fee())) revert APV_PoolMismatch();
        vaultAddress =
            Clones.cloneDeterministic(template, keccak256(abi.encode(msg.sender, block.chainid, numVaults())));
        AlphaProVault(vaultAddress).initialize(params, address(this));
        vaults.push(vaultAddress);
        isVault[vaultAddress] = true;
        emit NewVault(vaultAddress);
    }

    function setAllowedFactory(address factory, bool allowed) external onlyGovernance {
        allowedFactories[factory] = allowed;
    }

    function numVaults() public view returns (uint256) {
        return vaults.length;
    }

    /**
     * @notice Change the protocol fee charged on pool fees earned from
     * Uniswap, expressed as multiple of 1e-6. Fee is hard capped at 25%.
     */
    function setProtocolFee(uint24 _protocolFee) external onlyGovernance {
        if (_protocolFee > 25e4) revert APV_ProtocolFee();
        protocolFee = _protocolFee;
        emit UpdateProtocolFee(_protocolFee);
    }

    /**
     * @notice Governance address is not updated until the new governance
     * address has called `acceptGovernance()` to accept this responsibility.
     */
    function setGovernance(address _governance) external onlyGovernance {
        pendingGovernance = _governance;
    }

    /**
     * @notice `setGovernance()` should be called by the existing fee recipient
     * address prior to calling this function.
     */
    function acceptGovernance() external {
        if (msg.sender != pendingGovernance) revert APV_NotPendingGovernance();
        governance = msg.sender;
        emit UpdateGovernance(msg.sender);
    }

    modifier onlyGovernance() {
        if (msg.sender != governance) revert APV_NotGovernance();
        _;
    }
}
