// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

interface IPreCollateralizedMinter {

    // Structs
    struct MintParams {
        bytes32 collateralRef;
        address recipient;
        uint256 amount;
        uint256 nonce;
        uint256 expiry;
    }

    // Events
    event MintExecuted(bytes32 indexed collateralRef, address indexed recipient, uint256 amount, uint256 nonce);

    // Errors
    error InvalidSignature();
    error ZeroAddress();
    error UnauthorizedCaller();
    error ZeroAmount();
    error NonceAlreadyUsed();
    error Expired();
    error EmptyCollateralRef();

    /**
     * @notice Mint `amount` of USDf tokens to `recipient` with a signature.
     * @dev Can only be called by accounts with the MINTER_ROLE.
     * @param params The minting parameters.
     * @param signature The EIP712 signature of the minting parameters.
     */
    function preCollateralizedMint(MintParams calldata params, bytes calldata signature) external;

    /**
     * @notice Check if a nonce has been used
     * @param nonce The nonce to check
     * @return bool True if the nonce has been used
     */
    function isNonceUsed(uint256 nonce) external view returns (bool);

}
