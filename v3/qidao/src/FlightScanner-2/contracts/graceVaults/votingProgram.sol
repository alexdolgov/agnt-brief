// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./IVoter.sol";
import "./IVotingEscrow.sol";

interface IGraceVault {
    /**
     * @notice Retrieves the voting parameters for a given vault.
     * @param vaultId The ID of the vault for which to retrieve the voting parameters.
     * @return lpTokens An array of liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the voting power for each LP token.
     */
    function getUserVotes(uint256 vaultId) external view returns (address[] memory lpTokens, uint256[] memory percentages);
    /**
     * @notice Retrieves the global voting parameters.
     * @return lpTokens An array of global liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the global voting power for each LP token.
     */
    function getGlobalVotes() external view returns (address[] memory lpTokens, uint256[] memory percentages);

    /**
     * @notice Retrieves the address of the voting contract from the graceVault contract.
     * @return The address of the voting contract.
     */
    function voter() external view returns (address);

    /**
     * @notice Retrieves the address of the voting program contract.
     * @return The address of the voting program contract.
     */
    function voting() external view returns (address);

    /**
     * @notice Retrieves the address of the collateral contract from the graceVault contract.
     * @return The address of the collateral contract.
     */
    function collateral() external view returns (address);

    /**
     * @notice Retrieves the vault ID for a given collateral ID.
     * @param collateralId The ID of the collateral for which to retrieve the vault ID.
     * @return The vault ID corresponding to the collateral ID.
     */
    function collateralToVaultId(uint256 collateralId) external view returns (uint256);

    /**
     * @notice Retrieves the collateral ID for a given vault ID.
     * @param vaultId The ID of the vault for which to retrieve the collateral ID.
     * @return The collateral ID (NFT token ID) corresponding to the vault ID.
     */
    function vaultCollateral(uint256 vaultId) external view returns (uint256);
}

/**
 * @notice FlightScanner is designed to be called via delegatecall from a GraceVault contract.
 * @dev All functions assume they are executed in the context of a GraceVault contract.
 * Direct calls to this contract may produce unexpected results.
 */
contract FlightScanner {
    event Poked(uint256 tokenId, address[] lpTokens, uint256[] percentages);

    // Normalize finalPercentages to sum to 100%
    function normalizePercentages(uint256[] memory percentages) private pure {
        uint256 total = 0;
        for (uint256 i = 0; i < percentages.length; i++) {
            total += percentages[i];
        }
        if (total == 0) {
            return;
        }
        for (uint256 i = 0; i < percentages.length; i++) {
            percentages[i] = ((percentages[i] * 1000) / total) * 1e17; // 100.000000000000000000 aka 100000000000000000000
        }
    }

    struct VotingContracts {
        IGraceVault graceVault;
        IVoter voter;
        IVotingEscrow collateral;
    }

    struct VotingParams {
        address[] lpTokens;
        uint256[] percentages;
    }

    struct VotingResults {
        address[] finalLpTokens;
        uint256[] finalPercentages;
    }

    // TokenID is specifically for the aero id, not qidao
    function poke(uint256 tokenId) external {
        // Initialize graceVault and voter contracts
        VotingContracts memory contracts = VotingContracts({
            graceVault: IGraceVault(address(this)),
            voter: IVoter(IGraceVault(address(this)).voter()),
            collateral: IVotingEscrow(IGraceVault(address(this)).collateral())
        });
        uint256 vaultId = contracts.graceVault.collateralToVaultId(tokenId);

        address[] memory filteredLpTokens;
        uint256[] memory filteredPercentages;
        uint256 nonZeroCount;

        // Scope for voting parameters and calculations to free stack space
        {
            // Retrieve user-specific and global voting parameters
            VotingParams memory userVotes;
            VotingParams memory globalVotes;
            (userVotes.lpTokens, userVotes.percentages) = contracts.graceVault.getUserVotes(vaultId);
            (globalVotes.lpTokens, globalVotes.percentages) = contracts.graceVault.getGlobalVotes();

            // Calculate lock duration discount
            uint256 lockEndTime = contracts.collateral.locked(tokenId).end;
            uint256 lockDurationInSeconds = lockEndTime > block.timestamp ? lockEndTime - block.timestamp : 0;
            
            // Cap lock duration to 4 years to prevent overflow
            uint256 maxLockDuration = 4 * 365 * 24 * 60 * 60;
            if (lockDurationInSeconds > maxLockDuration) {
                lockDurationInSeconds = maxLockDuration;
            }
            
            uint256 discountPercentage = lockDurationInSeconds > 0 ? (lockDurationInSeconds * 500) / maxLockDuration : 0;
            discountPercentage = discountPercentage > 500 ? 500 : discountPercentage;

            // Adjust percentages based on discount
            adjustPercentages(userVotes.percentages, discountPercentage, true);
            adjustPercentages(globalVotes.percentages, discountPercentage, false);

            // Merge and deduplicate LP tokens and their percentages
            VotingResults memory results;
            (results.finalLpTokens, results.finalPercentages) = mergeAndDeduplicateLpTokens(
                userVotes.lpTokens, 
                userVotes.percentages, 
                globalVotes.lpTokens, 
                globalVotes.percentages
            );

            // Normalize the final percentages to sum to 1000
            normalizePercentages(results.finalPercentages);

            // First, count non-zero weights
            for (uint256 i = 0; i < results.finalPercentages.length; i++) {
                if (results.finalPercentages[i] > 0) {
                    nonZeroCount++;
                }
            }

            // Create new arrays with only non-zero weights
            filteredLpTokens = new address[](nonZeroCount);
            filteredPercentages = new uint256[](nonZeroCount);

            // Fill the new arrays
            uint256 j = 0;
            for (uint256 i = 0; i < results.finalPercentages.length; i++) {
                if (results.finalPercentages[i] > 0) {
                    filteredLpTokens[j] = results.finalLpTokens[i];
                    filteredPercentages[j] = results.finalPercentages[i];
                    j++;
                }
            }
        } // End of scope - userVotes, globalVotes, results, etc. are freed

        // If we have at least one non-zero weight, try to vote with the filtered arrays
        if (nonZeroCount > 0) {
            try contracts.voter.vote(tokenId, filteredLpTokens, filteredPercentages) {
                emit Poked(tokenId, filteredLpTokens, filteredPercentages);
                return; // Successfully voted with filtered tokens, exit the function
            } catch {
                // Fall through to default vote logic
            }
        }

        // Default vote logic - reached if either:
        // 1. There were no non-zero weight tokens, or
        // 2. The vote with filtered tokens failed
        address[] memory defaultLpTokens = new address[](1);
        defaultLpTokens[0] = 0x2a1463CeBE85315224c536AfD389b381B43F3206; // Default LP token
        uint256[] memory defaultPercentages = new uint256[](1);
        defaultPercentages[0] = 100000000000000000000; // 100% weight
        contracts.voter.vote(tokenId, defaultLpTokens, defaultPercentages);
        emit Poked(tokenId, defaultLpTokens, defaultPercentages);
    }

    // Adjusts percentages based on discount, scaling them to match the target total (user or global weight) out of 1000
    function adjustPercentages(uint256[] memory percentages, uint256 discountPercentage, bool isUser) private pure {
        uint256 totalPercentage = 0;
        for (uint256 i = 0; i < percentages.length; i++) {
            totalPercentage += percentages[i];
        }
        if (totalPercentage == 0) {
            return;
        }
        uint256 targetTotal = isUser ? discountPercentage : (1000 - discountPercentage);
        for (uint256 i = 0; i < percentages.length; i++) {
            percentages[i] = (percentages[i] * targetTotal) / totalPercentage;
        }
    }

    // Merges user and global LP tokens, deduplicates them, and sums percentages for duplicates
    function mergeAndDeduplicateLpTokens(address[] memory userLpTokens, uint256[] memory userPercentages, address[] memory globalLpTokens, uint256[] memory globalPercentages) private pure returns (address[] memory, uint256[] memory) {
        // Placeholder for merged and deduplicated LP tokens and percentages
        address[] memory mergedLpTokens = new address[](userLpTokens.length + globalLpTokens.length);
        uint256[] memory mergedPercentages = new uint256[](mergedLpTokens.length);

        uint256 mergeIndex = 0;
        // Merge user LP tokens and percentages
        for (uint256 i = 0; i < userLpTokens.length; i++) {
            bool found = false;
            for (uint256 j = 0; j < mergeIndex && !found; j++) {
                if (mergedLpTokens[j] == userLpTokens[i]) {
                    mergedPercentages[j] += userPercentages[i];
                    found = true;
                }
            }
            if (!found) {
                mergedLpTokens[mergeIndex] = userLpTokens[i];
                mergedPercentages[mergeIndex] = userPercentages[i];
                mergeIndex++;
            }
        }
        // Merge global LP tokens and percentages, checking for duplicates
        for (uint256 i = 0; i < globalLpTokens.length; i++) {
            bool found = false;
            for (uint256 j = 0; j < mergeIndex && !found; j++) {
                if (mergedLpTokens[j] == globalLpTokens[i]) {
                    mergedPercentages[j] += globalPercentages[i];
                    found = true;
                }
            }
            if (!found) {
                mergedLpTokens[mergeIndex] = globalLpTokens[i];
                mergedPercentages[mergeIndex] = globalPercentages[i];
                mergeIndex++;
            }
        }

        // Trim arrays to actual size
        address[] memory finalLpTokens = new address[](mergeIndex);
        uint256[] memory finalPercentages = new uint256[](mergeIndex);
        for (uint256 i = 0; i < mergeIndex; i++) {
            finalLpTokens[i] = mergedLpTokens[i];
            finalPercentages[i] = mergedPercentages[i];
        }

        return (finalLpTokens, finalPercentages);
    }

    /**
     * @notice Retrieves the voting parameters for a given vault by directly interacting with the graceVault contract.
     * @param vaultId The ID of the vault for which to retrieve the voting parameters.
     * @param graceVaultAddress The address of the graceVault contract.
     * @return lpTokens An array of liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the voting power for each LP token.
     */
    function _getUserVotes(uint256 vaultId, address graceVaultAddress) internal view returns (address[] memory lpTokens, uint256[] memory percentages) {
        IGraceVault graceVault = IGraceVault(graceVaultAddress);
        (lpTokens, percentages) = graceVault.getUserVotes(vaultId);
        return (lpTokens, percentages);
    }

    /**
     * @notice Retrieves the global voting parameters by directly interacting with the graceVault contract.
     * @param graceVaultAddress The address of the graceVault contract.
     * @return lpTokens An array of global liquidity pool token addresses used for voting.
     * @return percentages An array of percentages corresponding to the global voting power for each LP token.
     */
    function _getGlobalVotes(address graceVaultAddress) internal view returns (address[] memory lpTokens, uint256[] memory percentages) {
        IGraceVault graceVault = IGraceVault(graceVaultAddress);
        (lpTokens, percentages) = graceVault.getGlobalVotes();
        return (lpTokens, percentages);
    }

    /**
     * @notice Calculates the voting split between user and global votes based on lock duration
     * @param graceVaultAddress The address of the GraceVault contract
     * @param tokenId The Aerodrome NFT ID
     * @return userSplitBps The user's voting split in basis points (0-500, where 500 = 50%)
     * @return globalSplitBps The global voting split in basis points (500-1000)
     * @return lockEndTime The lock end timestamp
     * @return lockDuration The remaining lock duration in seconds
     */
    function getVotingSplit(address graceVaultAddress, uint256 tokenId) external view returns (
        uint256 userSplitBps,
        uint256 globalSplitBps,
        uint256 lockEndTime,
        uint256 lockDuration
    ) {
        IVotingEscrow collateral = IVotingEscrow(IGraceVault(graceVaultAddress).collateral());
        
        lockEndTime = collateral.locked(tokenId).end;
        lockDuration = lockEndTime > block.timestamp ? lockEndTime - block.timestamp : 0;
        
        // Cap lock duration to 4 years to prevent overflow
        uint256 maxLockDuration = 4 * 365 * 24 * 60 * 60;
        if (lockDuration > maxLockDuration) {
            lockDuration = maxLockDuration;
        }
        
        // Calculate discount percentage (0-500 basis points, capped at 50%)
        userSplitBps = lockDuration > 0 ? (lockDuration * 500) / maxLockDuration : 0;
        userSplitBps = userSplitBps > 500 ? 500 : userSplitBps;
        
        globalSplitBps = 1000 - userSplitBps;
        
        return (userSplitBps, globalSplitBps, lockEndTime, lockDuration);
    }

    /**
     * @notice Calculates the voting split for a given vault ID
     * @param graceVaultAddress The address of the GraceVault contract
     * @param vaultId The QiDao vault ID
     * @return userSplitBps The user's voting split in basis points (0-500, where 500 = 50%)
     * @return globalSplitBps The global voting split in basis points (500-1000)
     * @return lockEndTime The lock end timestamp
     * @return lockDuration The remaining lock duration in seconds
     */
    function getVotingSplitByVault(address graceVaultAddress, uint256 vaultId) external view returns (
        uint256 userSplitBps,
        uint256 globalSplitBps,
        uint256 lockEndTime,
        uint256 lockDuration
    ) {
        IGraceVault graceVault = IGraceVault(graceVaultAddress);
        uint256 tokenId = graceVault.vaultCollateral(vaultId);
        
        require(tokenId != 0, "Vault has no collateral");
        
        // Reuse the existing getVotingSplit function to avoid code duplication
        return this.getVotingSplit(graceVaultAddress, tokenId);
    }
}
