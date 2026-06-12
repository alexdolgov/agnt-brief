// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@chainlink/contracts-ccip/contracts/pools/TokenPool.sol";
import {BurnMintTokenPoolAbstract, TokenPool, Pool} from "@chainlink/contracts-ccip/contracts/pools/BurnMintTokenPoolAbstract.sol";
import {RizeToken} from "../RizeToken.sol";

contract BaseRizeMintBurnPool is BurnMintTokenPoolAbstract {
    using SafeERC20 for RizeToken;
    string public constant typeAndVersion = "RizeMintBurnPool 1.5.1";

    constructor(
        address token,
        uint8 localTokenDecimals,
        address[] memory allowlist,
        address rmnProxy,
        address router
    )
        TokenPool(
            IERC20(token),
            localTokenDecimals,
            allowlist,
            rmnProxy,
            router
        )
    {}

    function _burn(uint256 amount) internal virtual override {
        RizeToken(address(i_token)).burn(amount);
    }

    /// @notice Mint tokens from the pool to the recipient
    /// @dev The _validateReleaseOrMint check is an essential security check
    function releaseOrMint(
        Pool.ReleaseOrMintInV1 calldata releaseOrMintIn
    ) public virtual override returns (Pool.ReleaseOrMintOutV1 memory) {
        _validateReleaseOrMint(releaseOrMintIn);

        // Calculate the local amount
        uint256 localAmount = _calculateLocalAmount(
            releaseOrMintIn.amount,
            _parseRemoteDecimals(releaseOrMintIn.sourcePoolData)
        );

        // Mint  and transfer
        RizeToken(address(i_token)).mint(localAmount);
        RizeToken(address(i_token)).safeTransfer(
            releaseOrMintIn.receiver,
            localAmount
        );

        emit Minted(msg.sender, releaseOrMintIn.receiver, localAmount);

        return Pool.ReleaseOrMintOutV1({destinationAmount: localAmount});
    }
}
