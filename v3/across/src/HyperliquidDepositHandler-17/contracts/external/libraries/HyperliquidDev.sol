// The following dependencies are all taken from https://github.com/hyperliquid-dev/hyper-evm-lib.
pragma solidity ^0.8.0;

// Copied from https://github.com/hyperliquid-dev/hyper-evm-lib/blob/ee5e5e8593e9265fca35719e4efaa4fd3092123e/src/common/HLConstants.sol
library HLConstants {
    /*//////////////////////////////////////////////////////////////
                        Addresses
    //////////////////////////////////////////////////////////////*/

    address constant TOKEN_INFO_PRECOMPILE_ADDRESS = 0x000000000000000000000000000000000000080C;
}

interface ITokenRegistry {
    function getTokenIndex(address evmContract) external view returns (uint32 index);
}

// Copied from https://github.com/hyperliquid-dev/hyper-evm-lib/blob/ee5e5e8593e9265fca35719e4efaa4fd3092123e/src/PrecompileLib.sol
library PrecompileLib {
    // Onchain record of token indices for each linked evm contract
    ITokenRegistry constant REGISTRY = ITokenRegistry(0x0b51d1A9098cf8a72C325003F44C194D41d7A85B);

    /**
     * @notice Gets the index of a token from its address. Reverts if token is not linked to HyperCore.
     */
    function getTokenIndex(address tokenAddress) internal view returns (uint64) {
        return REGISTRY.getTokenIndex(tokenAddress);
    }

    function tokenInfo(uint64 token) internal view returns (TokenInfo memory) {
        (bool success, bytes memory result) = HLConstants.TOKEN_INFO_PRECOMPILE_ADDRESS.staticcall(abi.encode(token));
        if (!success) revert PrecompileLib__TokenInfoPrecompileFailed();
        return abi.decode(result, (TokenInfo));
    }

    struct TokenInfo {
        string name;
        uint64[] spots;
        uint64 deployerTradingFeeShare;
        address deployer;
        address evmContract;
        uint8 szDecimals;
        uint8 weiDecimals;
        int8 evmExtraWeiDecimals;
    }

    error PrecompileLib__TokenInfoPrecompileFailed();
}
