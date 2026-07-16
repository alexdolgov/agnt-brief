// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./IVoter.sol";

/**
 * @title GraceVaultClaimLogic
 * @notice External logic contract for grace vault claiming operations using delegateCall
 * @dev This contract should only be called via delegateCall from the main vault contract
 */
contract GraceVaultClaimLogic {
    using SafeERC20 for ERC20;
    
    // Events (these will be emitted in the context of the delegating contract)
    event ClaimedBribes(uint256 indexed vaultId, address indexed vaultOwner, uint256[] amounts);
    event ClaimedFees(uint256 indexed vaultId, address indexed vaultOwner, uint256[] amounts);

    /**
     * @notice Claims bribes for a vault - must be called via delegateCall
     * @param _bribes The addresses of the bribe contracts to claim from
     * @param _tokens The token addresses for each bribe contract to claim
     * @param vaultId The ID of the vault for which to claim bribes
     * @param tokenId The NFT token ID associated with the vault
     * @param vaultOwner The owner of the vault who will receive the rewards
     * @param voter The voter contract address to use for claiming
     * @return claimed The amounts of each token claimed
     */
    function claimVaultBribes(
        address[] calldata _bribes,
        address[][] calldata _tokens,
        uint256 vaultId,
        uint256 tokenId,
        address vaultOwner,
        address voter
    ) external returns (uint256[] memory claimed) {
        // Track balances before claiming
        uint256[][] memory before = new uint256[][](_tokens.length);
        for (uint256 i; i < _tokens.length; ++i) {
            before[i] = new uint256[](_tokens[i].length);
            for (uint256 j; j < _tokens[i].length; ++j) {
                before[i][j] = ERC20(_tokens[i][j]).balanceOf(address(this));
            }
        }

        // Claim the bribes through voter
        IVoter(voter).claimBribes(_bribes, _tokens, tokenId);

        // Calculate deltas and transfer to vault owner
        claimed = new uint256[](_tokens.length);
        for (uint256 i; i < _tokens.length; ++i) {
            for (uint256 j; j < _tokens[i].length; ++j) {
                uint256 afterBal = ERC20(_tokens[i][j]).balanceOf(address(this));
                uint256 delta = afterBal - before[i][j];
                if (delta != 0) {
                    try ERC20(_tokens[i][j]).transfer(vaultOwner, delta) {
                        claimed[i] += delta;
                    } catch {
                        // Skip failed transfers
                    }
                }
            }
        }
        
        emit ClaimedBribes(vaultId, vaultOwner, claimed);
    }

    /**
     * @notice Claims fees for a vault - must be called via delegateCall
     * @param _fees The addresses of the fee contracts to claim from
     * @param _tokens The token addresses for each fee contract to claim
     * @param vaultId The ID of the vault for which to claim fees
     * @param tokenId The NFT token ID associated with the vault
     * @param vaultOwner The owner of the vault who will receive the rewards
     * @param voter The voter contract address to use for claiming
     * @return claimed The amounts of each token claimed
     */
    function claimVaultFees(
        address[] calldata _fees,
        address[][] calldata _tokens,
        uint256 vaultId,
        uint256 tokenId,
        address vaultOwner,
        address voter
    ) external returns (uint256[] memory claimed) {
        // Track balances before claiming
        uint256[][] memory before = new uint256[][](_tokens.length);
        for (uint256 i; i < _tokens.length; ++i) {
            before[i] = new uint256[](_tokens[i].length);
            for (uint256 j; j < _tokens[i].length; ++j) {
                before[i][j] = ERC20(_tokens[i][j]).balanceOf(address(this));
            }
        }

        // Claim the fees through voter
        IVoter(voter).claimFees(_fees, _tokens, tokenId);

        // Calculate deltas and transfer to vault owner
        claimed = new uint256[](_tokens.length);
        for (uint256 i; i < _tokens.length; ++i) {
            for (uint256 j; j < _tokens[i].length; ++j) {
                uint256 afterBal = ERC20(_tokens[i][j]).balanceOf(address(this));
                uint256 delta = afterBal - before[i][j];
                if (delta != 0) {
                    try ERC20(_tokens[i][j]).transfer(vaultOwner, delta) {
                        claimed[i] += delta;
                    } catch {
                        // Skip failed transfers
                    }
                }
            }
        }
        
        emit ClaimedFees(vaultId, vaultOwner, claimed);
    }
}