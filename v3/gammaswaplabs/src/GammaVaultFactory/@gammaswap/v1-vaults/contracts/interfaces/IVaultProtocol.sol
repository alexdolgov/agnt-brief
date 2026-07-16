// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

/// @title Interface for Vault Protocols
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @dev Interface used to add vault protocols and initialize them in GammaVaultFactory
interface IVaultProtocol {

    /// @dev Initialization vault parameters
    struct InitializeParameters {
        /// @dev reference id to identify vault in GammaPool as collateral manager
        uint16 refId;
        /// @dev id used to identify strategy type in GammaVault factory
        uint16 strategyId;
        /// @dev address of token that is considered the asset token whose value is kept constant in this vault
        address assetToken;
        /// @dev address concentrated liquidity pool used by this vault
        address lpPool;
        /// @dev address of GammaPool used by this vault to hedge concentrated liquidity position
        address gsPool;
        /// @dev address of CFMM used by GammaPool of this vault that hedges concentrated liquidity position
        address cfmm;
        /// @dev address of token0 in concentrated liquidity pool and GammaPool used by this vault
        address token0;
        /// @dev address of token1 in concentrated liquidity pool and GammaPool used by this vault
        address token1;
        /// @dev concentrated liquidity pool tick size
        int24 tickSize;
        /// @dev concentrated liquidity pool fee in basis points
        uint24 poolFee;
        /// @dev address of funding vault contract that handles deposits of asset token
        address depositVault;
        /// @dev address of funding vault contract that handles withdrawals of asset token
        address withdrawVault;
        /// @dev price at which to initialize range parameters for vault strategy
        uint256 startPrice;
    }

    /// @dev first byte is concentrated liquidity pool protocolId, second byte is gs protocolId
    /// @dev Protocol id of the implementation contract for this GammaVault
    function protocolId() external view returns(uint16);

    /// @dev GammaVaultFactory contract that will build GammaVaults with this implementation
    function gvFactory() external view returns(address);

    /// @dev Validate addresses of contracts used to create pool
    /// @param assetToken - asset token of the vault. The token the vault is trying to preserve
    /// @param lpPool - address of liquidity pool where funds are deposited to
    /// @param gsPool - address of GammaPool used to hedge liquidity pool
    /// @param data - custom struct containing additional information used to verify the vault
    /// @return cfmm - amm of GammaPool
    /// @return token0 - token0 of concentrated liquidity pool
    /// @return token1 - token1 of concentrated liquidity pool
    /// @return tickSpacing - concentrated liquidity pool tickSpacing
    /// @return poolFee - concentrated liquidity pool fee
    function validate(address assetToken, address lpPool, address gsPool, bytes calldata data) external view
        returns(address cfmm, address token0, address token1, int24 tickSpacing, uint24 poolFee);

    /// @dev Initialize GammaVault storage fields. Called from GammaVaultFactory right after GammaVault instantiation
    /// @param params - initialization parameters
    /// @param data - additional custom parameters to initialize vault
    function initialize(InitializeParameters memory params, bytes calldata data) external;

    /// @dev Get address of funding vault that handles deposits into vault contract
    function depositVault() external view returns(address);

    /// @dev Get address of funding vault that handles withdrawals from vault contract
    function withdrawVault() external view returns(address);
}