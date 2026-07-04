// File: contracts/IERC20.sol


// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.7.6;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function symbol() external view returns (string memory);
}

// File: contracts/IRamsesV2Pool.sol


pragma solidity ^0.7.6;

interface IRamsesV2Pool {
    function liquidity() external view returns (uint128);
    function boostedLiquidity() external view returns (uint128);
    function slot0() external view returns (uint160, int24, uint16, uint16, uint16, uint8, bool);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function fee() external view returns (uint24);
}



// File: contracts/IRamsesGaugeV2.sol


pragma solidity >=0.5.0 <0.9.0;

interface IRamsesGaugeV2 {
    /// @notice Emitted when a reward notification is made.
    /// @param from The address from which the reward is notified.
    /// @param reward The address of the reward token.
    /// @param amount The amount of rewards notified.
    /// @param period The period for which the rewards are notified.
    event NotifyReward(
        address indexed from,
        address indexed reward,
        uint256 amount,
        uint256 period
    );

    /// @notice Emitted when a bribe is made.
    /// @param from The address from which the bribe is made.
    /// @param reward The address of the reward token.
    /// @param amount The amount of tokens bribed.
    /// @param period The period for which the bribe is made.
    event Bribe(
        address indexed from,
        address indexed reward,
        uint256 amount,
        uint256 period
    );

    /// @notice Emitted when rewards are claimed.
    /// @param period The period for which the rewards are claimed.
    /// @param _positionHash The identifier of the NFP for which rewards are claimed.
    /// @param receiver The address of the receiver of the claimed rewards.
    /// @param reward The address of the reward token.
    /// @param amount The amount of rewards claimed.
    event ClaimRewards(
        uint256 period,
        bytes32 _positionHash,
        address receiver,
        address reward,
        uint256 amount
    );

    /// @notice Initializes the contract with the provided gaugeFactory, voter, and pool addresses.
    /// @param _gaugeFactory The address of the gaugeFactory to set.
    /// @param _voter The address of the voter to set.
    /// @param _nfpManager The address of the NFP manager to set.
    /// @param _feeCollector The address of the fee collector to set.
    /// @param _pool The address of the pool to set.
    function initialize(
        address _gaugeFactory,
        address _voter,
        address _nfpManager,
        address _feeCollector,
        address _pool
    ) external;

    /// @notice Retrieves the value of the firstPeriod variable.
    /// @return The value of the firstPeriod variable.
    function firstPeriod() external returns (uint256);

    /// @notice Retrieves the total supply of a specific token for a given period.
    /// @param period The period for which to retrieve the total supply.
    /// @param token The address of the token for which to retrieve the total supply.
    /// @return The total supply of the specified token for the given period.
    function tokenTotalSupplyByPeriod(
        uint256 period,
        address token
    ) external view returns (uint256);

    /// @notice Retrieves the total boosted seconds for a specific period.
    /// @param period The period for which to retrieve the total boosted seconds.
    /// @return The total boosted seconds for the specified period.
    function periodTotalBoostedSeconds(
        uint256 period
    ) external view returns (uint256);

    /// @notice Retrieves the getTokenTotalSupplyByPeriod of the current period.
    /// @dev included to support voter's left() check during distribute().
    /// @param token The address of the token for which to retrieve the remaining amount.
    /// @return The amount of tokens left to distribute in this period.
    function left(address token) external view returns (uint256);

    /// @notice Retrieves the reward rate for a specific reward address.
    /// @dev this method returns the base rate without boost
    /// @param token The address of the reward for which to retrieve the reward rate.
    /// @return The reward rate for the specified reward address.
    function rewardRate(address token) external view returns (uint256);

    /// @notice Retrieves the claimed amount for a specific period, position hash, and user address.
    /// @param period The period for which to retrieve the claimed amount.
    /// @param _positionHash The identifier of the NFP for which to retrieve the claimed amount.
    /// @param reward The address of the token for the claimed amount.
    /// @return The claimed amount for the specified period, token ID, and user address.
    function periodClaimedAmount(
        uint256 period,
        bytes32 _positionHash,
        address reward
    ) external view returns (uint256);

    /// @notice Retrieves the last claimed period for a specific token, token ID combination.
    /// @param token The address of the reward token for which to retrieve the last claimed period.
    /// @param _positionHash The identifier of the NFP for which to retrieve the last claimed period.
    /// @return The last claimed period for the specified token and token ID.
    function lastClaimByToken(
        address token,
        bytes32 _positionHash
    ) external view returns (uint256);

    /// @notice Retrieves the reward address at the specified index in the rewards array.
    /// @param index The index of the reward address to retrieve.
    /// @return The reward address at the specified index.
    function rewards(uint256 index) external view returns (address);

    /// @notice Checks if a given address is a valid reward.
    /// @param reward The address to check.
    /// @return A boolean indicating whether the address is a valid reward.
    function isReward(address reward) external view returns (bool);

    /// @notice Returns an array of reward token addresses.
    /// @return An array of reward token addresses.
    function getRewardTokens() external view returns (address[] memory);

    /// @notice Returns the hash used to store positions in a mapping
    /// @param owner The address of the position owner
    /// @param index The index of the position
    /// @param tickLower The lower tick boundary of the position
    /// @param tickUpper The upper tick boundary of the position
    /// @return _hash The hash used to store positions in a mapping
    function positionHash(
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper
    ) external pure returns (bytes32);

    /// @notice Retrieves the liquidity and boosted liquidity for a specific NFP.
    /// @param tokenId The identifier of the NFP.
    /// @return liquidity The liquidity of the position token.
    /// @return boostedLiquidity The boosted liquidity of the position token.
    /// @return veNftTokenId The attached veNFT
    function positionInfo(
        uint256 tokenId
    )
        external
        view
        returns (
            uint128 liquidity,
            uint128 boostedLiquidity,
            uint256 veNftTokenId
        );

    /// @notice Returns the amount of rewards earned for an NFP.
    /// @param token The address of the token for which to retrieve the earned rewards.
    /// @param tokenId The identifier of the specific NFP for which to retrieve the earned rewards.
    /// @return reward The amount of rewards earned for the specified NFP and tokens.
    function earned(
        address token,
        uint256 tokenId
    ) external view returns (uint256 reward);

    /// @notice Returns the amount of rewards earned during a period for an NFP.
    /// @param period The period for which to retrieve the earned rewards.
    /// @param token The address of the token for which to retrieve the earned rewards.
    /// @param tokenId The identifier of the specific NFP for which to retrieve the earned rewards.
    /// @return reward The amount of rewards earned for the specified NFP and tokens.
    function periodEarned(
        uint256 period,
        address token,
        uint256 tokenId
    ) external view returns (uint256);

    /// @notice Retrieves the earned rewards for a specific period, token, owner, index, tickLower, and tickUpper.
    /// @param period The period for which to retrieve the earned rewards.
    /// @param token The address of the token for which to retrieve the earned rewards.
    /// @param owner The address of the owner for which to retrieve the earned rewards.
    /// @param index The index for which to retrieve the earned rewards.
    /// @param tickLower The tick lower bound for which to retrieve the earned rewards.
    /// @param tickUpper The tick upper bound for which to retrieve the earned rewards.
    /// @return The earned rewards for the specified period, token, owner, index, tickLower, and tickUpper.
    function periodEarned(
        uint256 period,
        address token,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper
    ) external view returns (uint256);

    /// @notice Retrieves the earned rewards for a specific period, token, owner, index, tickLower, and tickUpper.
    /// @dev used by getReward() and saves gas by saving states
    /// @param period The period for which to retrieve the earned rewards.
    /// @param token The address of the token for which to retrieve the earned rewards.
    /// @param owner The address of the owner for which to retrieve the earned rewards.
    /// @param index The index for which to retrieve the earned rewards.
    /// @param tickLower The tick lower bound for which to retrieve the earned rewards.
    /// @param tickUpper The tick upper bound for which to retrieve the earned rewards.
    /// @param caching Whether to cache the results or not.
    /// @return The earned rewards for the specified period, token, owner, index, tickLower, and tickUpper.
    function cachePeriodEarned(
        uint256 period,
        address token,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        bool caching
    ) external returns (uint256);

    /// @notice Notifies the contract about the amount of rewards to be distributed for a specific token.
    /// @param token The address of the token for which to notify the reward amount.
    /// @param amount The amount of rewards to be distributed.
    function notifyRewardAmount(address token, uint256 amount) external;

    /// @notice Retrieves the reward amount for a specific period, NFP, and token addresses.
    /// @param period The period for which to retrieve the reward amount.
    /// @param tokens The addresses of the tokens for which to retrieve the reward amount.
    /// @param tokenId The identifier of the specific NFP for which to retrieve the reward amount.
    /// @param receiver The address of the receiver of the reward amount.
    function getPeriodReward(
        uint256 period,
        address[] calldata tokens,
        uint256 tokenId,
        address receiver
    ) external;

    /// @notice Retrieves the rewards for a specific period, set of tokens, owner, index, tickLower, tickUpper, and receiver.
    /// @param period The period for which to retrieve the rewards.
    /// @param tokens An array of token addresses for which to retrieve the rewards.
    /// @param owner The address of the owner for which to retrieve the rewards.
    /// @param index The index for which to retrieve the rewards.
    /// @param tickLower The tick lower bound for which to retrieve the rewards.
    /// @param tickUpper The tick upper bound for which to retrieve the rewards.
    /// @param receiver The address of the receiver of the rewards.
    function getPeriodReward(
        uint256 period,
        address[] calldata tokens,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        address receiver
    ) external;

    function getRewardForOwner(
        uint256 tokenId,
        address[] memory tokens
    ) external;
}
// File: contracts/IRamsesVoter.sol


pragma solidity ^0.7.6;

interface IRamsesVoter {
    function gauges(address) external view returns (address);
    function length() external view returns (uint256);
    function pools(uint256) external view returns (address);
}


// File: contracts/IRamsesClFactory.sol


pragma solidity ^0.7.6;

interface IRamsesClFactory {
    function getPool(address, address, uint24) external view returns (address);
}

// File: contracts/IRamsesNfpManager.sol


pragma solidity ^0.7.6;

interface IRamsesNfpManager {
    function balanceOf(address) external view returns (uint256);
    function tokenOfOwnerByIndex(address, uint256) external view returns (uint256);
    function positions(uint256) external view returns (uint96,address,address,address,uint24,int24,int24,uint128,uint256,uint256,uint128,uint128);
    function ownerOf(uint256) external view returns (address);
}
// File: contracts/SafuLensPhar.sol



pragma solidity ^0.7.6;
pragma abicoder v2;








struct ClData {
    uint256 nft_id;
    address token0;
    address token1;
    string symbol0;
    string symbol1;
    uint24 fee;
    address pool_address;
    address gauge_address;
    uint256 pool_liquidity;
    uint256 pool_boostedliq;
    uint256 boostedliq;
    int24 tick;
    int24 tick_lower;
    int24 tick_upper;
    uint128 liquidity;
    address[] rewardTokens;
    uint256[] earnedTokens;
}

contract SafuLens {
    IRamsesNfpManager public ramsesNfpManager =
        IRamsesNfpManager(0xAAA78E8C4241990B4ce159E105dA08129345946A);
    IRamsesClFactory public ramsesClFactory =
        IRamsesClFactory(0xAAA32926fcE6bE95ea2c51cB4Fcb60836D320C42);
    IRamsesVoter public ramsesVoter =
        IRamsesVoter(0xAAAf3D9CDD3602d117c67D80eEC37a160C8d9869);

    function nftIdsOfOwner(address owner) public view returns (uint256[] memory) {
        uint256[] memory nft_ids = new uint256[](
            ramsesNfpManager.balanceOf(owner)
        );
        for (uint256 i = 0; i < nft_ids.length; i++) {
            nft_ids[i] = ramsesNfpManager.tokenOfOwnerByIndex(owner, i);
        }

        return nft_ids;
    }

    function getClData(uint256 nft_id) public view returns (ClData memory) {
        ClData memory clData;

        clData.nft_id = nft_id;
        (
            ,
            ,
            clData.token0,
            clData.token1,
            clData.fee,
            clData.tick_lower,
            clData.tick_upper,
            ,
            ,
            ,
            ,

        ) = ramsesNfpManager.positions(nft_id);

        clData.pool_address = ramsesClFactory.getPool(
            clData.token0,
            clData.token1,
            clData.fee
        );
        clData.gauge_address = ramsesVoter.gauges(clData.pool_address);
        (clData.liquidity, clData.boostedliq, ) = IRamsesGaugeV2(
            clData.gauge_address
        ).positionInfo(nft_id);

        clData.symbol0 = IERC20(clData.token0).symbol();
        clData.symbol1 = IERC20(clData.token1).symbol();
        clData.pool_liquidity = IRamsesV2Pool(clData.pool_address).liquidity();
        clData.pool_boostedliq = IRamsesV2Pool(clData.pool_address)
            .boostedLiquidity();
        (, clData.tick, , , , , ) = IRamsesV2Pool(clData.pool_address).slot0();

        clData.rewardTokens = IRamsesGaugeV2(clData.gauge_address).getRewardTokens();
        clData.earnedTokens = new uint256[](clData.rewardTokens.length);
        for (uint256 i = 0; i < clData.rewardTokens.length; i++) {
            clData.earnedTokens[i] = IRamsesGaugeV2(clData.gauge_address).earned(clData.rewardTokens[i], clData.nft_id);
        }

        return clData;
    }

    function getClDataBatched(
        uint256[] memory nft_ids
    ) public view returns (ClData[] memory) {
        ClData[] memory clData = new ClData[](nft_ids.length);
        for (uint256 i = 0; i < nft_ids.length; i++) {
            clData[i] = getClData(nft_ids[i]);
        }

        return clData;
    }

    function clDataOfOwner(
        address owner
    ) public view returns (ClData[] memory) {
        uint256[] memory nft_ids = nftIdsOfOwner(owner);

        // Determine the starting index based on the length of the nft_ids array.
        uint256 startIndex = nft_ids.length > 200 ? nft_ids.length - 200 : 0;
        uint256 length = nft_ids.length - startIndex;

        // Create a new array to store the last 200 (or less) NFT IDs.
        uint256[] memory lastNftIds = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            lastNftIds[i] = nft_ids[startIndex + i];
        }

        return getClDataBatched(lastNftIds);
    }

    function checkNFTsExistence(uint256[] memory nftIds) public view returns (uint256[] memory) {
        uint256[] memory existingNFTs = new uint256[](nftIds.length);
        uint256 count = 0;

        for (uint256 i = 0; i < nftIds.length; i++) {
            try ramsesNfpManager.ownerOf(nftIds[i]) {
                // If the call doesn't revert, the NFT exists
                existingNFTs[count] = nftIds[i];
                count++;
            } catch {
                // If the call reverts, the NFT doesn't exist, do nothing
            }
        }

        // Resize the array to fit the actual number of existing NFTs
        uint256[] memory resizedArray = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            resizedArray[i] = existingNFTs[i];
        }

        return resizedArray;
    }

}