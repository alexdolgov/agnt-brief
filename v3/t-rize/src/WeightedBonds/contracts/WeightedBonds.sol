// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {MaturityPools, Pool, PoolWithId} from "./MaturityPools.sol";
import {BondVesting, VestingSchedule} from "./BondVesting.sol";
import {INFTBond} from "contracts/interfaces/INFTBond.sol";
import {IPoolMigrator, MigrationParams} from "contracts/interfaces/IPoolMigrator.sol";

struct Bond {
    uint256 timeMarker;
    uint256 amount;
    uint16 poolId;
}

struct BondRelease {
    uint256 amount;
    uint256 time;
}

/**
 * @title WeightedBonds
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * Custody tokens and stores bond related information
 *
 * ## Maturity Adjusted Voting:
 * Relies on MaturityPools to calculate the linear maturity and weight of the bond.
 *
 * ## Vested Bonds:
 * Relies on BondVesting to track vested bonds. This feature is relevant for presale
 * participants and governance issued funding.
 *
 * ## Breaking Bonds:
 * Bonded tokens cannot be instantly released, user need to wait for the `releaseWarmup`
 * to be up before he can withdraw his tokens.
 *
 * User can queue token release by calling the `function breakBond()`. The user limited
 * to 16 simultaneous queued release. This limit is imposed in order to prevent
 * OUT_OF_GAS exception as the `function releaseToken()`
 * has a complexity of O(n). The `function releaseToken()` will delete queued release from the freeing
 * up slots to queue new token release.
 *
 * ## Increasing Bond:
 * Users are able to increase their bonds by adding new tokens. It will proportionally reduce the maturity
 * of the NFT in order to keep the previous weight + weight of new tokens. It is equal to creating a new Bond.
 * The objective is to maintain the totalMaturedTime constant.
 *
 * i.e: a user deposited 5 tokens in a pool with `baseWeight = 2` and `maturedWeightBonus = 3` and `fullMaturity = 4`
 * at full maturity the `maturedTime = oldAmountOfToken * fullMaturity = 5 * 4 = 20`
 *
 * User adds 5 new token, doubling its bonded token.
 * So its new maturity is `maturedTime / totalAmountOfToken = newMaturity = 20 / 10 = 2`
 * `maturity = maturedTime / fullMaturity = 2 / 4 = 0.5
 *
 *  so his previous voting power was 25, his new voting power should be
 * `previousVotingPower + newToken * baseWeight = 25 + 5 * 2 = 35`
 * We can validate that with
 * `weight = amount * (baseWeight + maturity * maturedWeightBonus`
 * `weight = 10 * (2 + 0.5 * 3) = 35
 */
contract WeightedBonds is MaturityPools, BondVesting {
    using SafeERC20 for IERC20Metadata;

    uint256 private _releaseWarmup = 7 days;
    INFTBond private immutable _GOV_BOND;

    mapping(uint256 => Bond) private _bonds;

    // Bond release is ordered by time
    mapping(uint256 => BondRelease[]) private _bondReleases;
    uint8 public constant MAX_RELEASE_QUEUE_LENGTH = 16;

    mapping(address => bool) private _migratorsWhitelist;

    mapping(uint256 => address) private _vestingInitiator;

    event BondCreated(
        address indexed account,
        uint256 indexed nftId,
        uint16 indexed poolId,
        uint256 amount
    );
    event BondBroken(uint256 indexed nftId, uint256 amount);
    event BondMigrated(
        uint256 indexed nftId,
        uint16 indexed toPool,
        address indexed migrator
    );
    event TokensReleased(
        uint256 indexed nftId,
        address indexed to,
        uint256 amount
    );
    event ReleaseWarmupUpdated(uint256 value);
    event VestedTokenClawed(uint256 indexed nftId, uint256 amount, address to);
    event MigratorAdded(address indexed migrator);
    event MigratorRemoved(address indexed migrator);

    error NotOwnerOfToken(uint256 tokenId);
    error InsufficientBond(uint256 bonded, uint256 required);
    error MaxQueueLengthReached();
    error VestedTokens();
    error CannotIncreaseByZero();
    error MigratorNotWhitelisted(address migrator);
    error MigrationOverWeight(uint256 weight, uint256 newWeight);
    error AlreadyInPool(uint16 poolId);
    error CallerIsNotInitiator(address caller, address initiator);

    modifier onlyOwnerOfToken(uint256 tokenId) {
        if (_GOV_BOND.ownerOf(tokenId) != msg.sender) {
            revert NotOwnerOfToken(tokenId);
        }
        _;
    }

    constructor(address govNft) {
        _GOV_BOND = INFTBond(govNft);
    }

    function newVestedBond(
        uint16 poolId,
        uint256 amount,
        address to,
        uint64 start,
        uint64 cliff,
        uint64 vesting
    ) external {
        uint256 tokenId = _createBond(poolId, amount, msg.sender, to);
        _vestingInitiator[tokenId] = msg.sender;
        _startVesting(
            tokenId,
            VestingSchedule({
                amount: amount,
                vesting: vesting,
                cliff: cliff,
                start: start
            })
        );
    }

    /**
     * @notice Revoke vested tokens of a bond
     * Requires caller to be the vesting initiator
     * @param tokenId the nftId of the bond
     * @param to address which will receive the vested tokens
     */
    function clawbackVestedTokens(uint256 tokenId, address to) public {
        address initiator = _vestingInitiator[tokenId];
        if (msg.sender != initiator) {
            revert CallerIsNotInitiator(msg.sender, initiator);
        }
        _clawbackVested(tokenId, to);
    }

    function newBond(
        uint16 poolId,
        uint256 amount,
        address to
    ) public returns (uint256) {
        return _createBond(poolId, amount, msg.sender, to);
    }

    /**
     * Increase bonded amount and reduces maturity of all tokens to maintain the same weight.
     * @param tokenId nft id
     * @param amount amount of tokens to bond
     */
    function increaseBond(uint256 tokenId, uint256 amount) public {
        if (amount == 0) {
            revert CannotIncreaseByZero();
        }
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);

        /**
         * We're pulling funds so reverse the effect-interactions
         */
        IERC20Metadata(pool.token).safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );
        uint256 maturity = _getMaturity(pool, bond.timeMarker);
        uint256 newBondAmount = bond.amount + amount;
        uint256 adjustedMaturity = (bond.amount * maturity) / newBondAmount;
        uint256 timeMatured = (pool.fullMaturity * adjustedMaturity) /
            MAX_MATURITY;

        bond.amount = newBondAmount;
        /**
         * time manipulation can push slightly the timeMarker, leading
         * to increased maturity/weight, but its not critical
         */
        bond.timeMarker = block.timestamp - timeMatured; // solhint-disable-line not-rely-on-time
    }

    /**
     * Queue tokens to be release once the release warm up is over
     * @param tokenId nft id
     * @param amount amount of tokens to be released
     */
    function breakBond(
        uint256 tokenId,
        uint256 amount
    ) public onlyOwnerOfToken(tokenId) {
        Bond storage bond = _bonds[tokenId];

        uint256 breakableBond = bond.amount - vested(tokenId);
        if (breakableBond < amount) {
            revert InsufficientBond(breakableBond, amount);
        }

        bond.amount -= amount;

        uint256 releaseQueueLength = _bondReleases[tokenId].length;
        if (releaseQueueLength >= MAX_RELEASE_QUEUE_LENGTH) {
            revert MaxQueueLengthReached();
        }

        /**
         * cannot manipulate timestamps to be back in time to skip warmup
         **/
        _bondReleases[tokenId].push(
            BondRelease({
                amount: amount,
                time: block.timestamp + _releaseWarmup // solhint-disable-line not-rely-on-time
            })
        );
        emit BondBroken(tokenId, amount);
    }

    /**
     * Claim tokens which are unbonded
     * @param tokenId nft id
     * @param to address of the receiver of the tokens
     */
    function release(
        uint256 tokenId,
        address to
    ) public onlyOwnerOfToken(tokenId) {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);
        BondRelease[] storage releases = _bondReleases[tokenId];
        (uint8 consumedItems, uint256 releasedAmount) = _releasableTokens(
            tokenId
        );
        // shifts unconsumed items in queue
        uint256 releaseLength = releases.length;
        for (uint8 y = consumedItems; y < releaseLength; y++) {
            releases[y - consumedItems] = releases[y];
        }
        // free storage slot of consumed items
        for (uint8 y = 0; y < consumedItems; y++) {
            releases.pop();
        }
        IERC20Metadata(pool.token).safeTransfer(to, releasedAmount);
        emit TokensReleased(tokenId, to, releasedAmount);
    }

    /**
     * Allows to migrate tokens from a pool to another pool. The weight must be less or equal to pre-migration.
     *
     * @dev only whitelisted migrators can be used in order to prevent abuse. I.e:
     * a migrator could instantly release all tokens and skip the `releaseWarmup`
     *
     * @param receiver contract address which receives the token and callback
     * @param tokenId NftId
     * @param targetPoolId the pool the bond will be migrated into
     * @param params arbitrary data which is forwarded in the callback
     */
    function migratePool(
        address receiver,
        uint256 tokenId,
        uint16 targetPoolId,
        bytes calldata params
    ) public onlyOwnerOfToken(tokenId) {
        if (_migratorsWhitelist[receiver] == false) {
            revert MigratorNotWhitelisted(receiver);
        }

        if (vested(tokenId) > 0) {
            revert VestedTokens();
        }

        Bond storage bond = _bonds[tokenId];
        if (targetPoolId == bond.poolId) {
            revert AlreadyInPool(bond.poolId);
        }

        Pool memory fromPool = _getPoolOrRevert(bond.poolId);
        Pool memory toPool = _getPoolOrRevert(targetPoolId);

        uint256 normalizedWeight = _getNormalizedWeight(
            fromPool,
            bond.amount,
            bond.timeMarker
        );

        uint256 amount = bond.amount;
        /**
         * update the amount to prevent reentrancy
         * subsequent calls will receive 0 tokens
         **/
        bond.amount = 0;
        IERC20Metadata(fromPool.token).safeTransfer(receiver, amount);

        IPoolMigrator migrator = IPoolMigrator(receiver);
        (uint256 toAmount, uint256 timeMarker) = migrator.executeMigration(
            MigrationParams({
                tokenId: tokenId,
                fromAmount: amount,
                timeMarker: bond.timeMarker,
                weight: normalizedWeight,
                fromPool: fromPool,
                toPool: toPool,
                initiator: msg.sender,
                params: params
            })
        );

        uint256 newNormalizedWeight = _getNormalizedWeight(
            toPool,
            toAmount,
            timeMarker
        );
        if (newNormalizedWeight > normalizedWeight) {
            revert MigrationOverWeight(normalizedWeight, newNormalizedWeight);
        }

        IERC20Metadata(toPool.token).safeTransferFrom(
            receiver,
            address(this),
            toAmount
        );
        bond.amount = toAmount;
        bond.timeMarker = timeMarker;
        bond.poolId = targetPoolId;
        emit BondMigrated(tokenId, targetPoolId, receiver);
    }

    function getReleaseWarmup() public view returns (uint256) {
        return _releaseWarmup;
    }

    function releasableTokens(uint256 tokenId) public view returns (uint256) {
        (, uint256 amount) = _releasableTokens(tokenId);
        return amount;
    }

    /**
     * Sum token amount of all broken bonds
     * @param tokenId nft id
     */
    function brokenBond(uint256 tokenId) public view returns (uint256) {
        BondRelease[] storage releases = _bondReleases[tokenId];
        uint256 total = 0;
        for (uint256 i = 0; i < releases.length; i++) {
            total += releases[i].amount;
        }
        return total;
    }

    /**
     * The amount of bonded tokens
     * @param tokenId nft id
     */
    function bonded(uint256 tokenId) public view returns (uint256) {
        Bond storage bond = _bonds[tokenId];
        return bond.amount;
    }

    function getWeight(uint256 tokenId) public view returns (uint256) {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);
        return _getWeight(pool, bond.amount, bond.timeMarker);
    }

    function getBond(uint256 bondId) public view returns (Bond memory) {
        return _bonds[bondId];
    }

    function getNormalizedWeight(
        uint256 tokenId
    ) public view returns (uint256) {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);
        return _getNormalizedWeight(pool, bond.amount, bond.timeMarker);
    }

    function getMaturity(uint256 tokenId) public view returns (uint256) {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);
        return _getMaturity(pool, bond.timeMarker);
    }

    function getBondPool(
        uint256 tokenId
    ) public view returns (PoolWithId memory) {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = getPoolById(bond.poolId);
        return
            PoolWithId({
                id: bond.poolId,
                token: pool.token,
                baseWeight: pool.baseWeight,
                maturedWeightBonus: pool.maturedWeightBonus,
                fullMaturity: pool.fullMaturity
            });
    }

    function getBondRelease(
        uint256 tokenId
    ) public view returns (BondRelease[] memory) {
        return _bondReleases[tokenId];
    }

    function isMigrator(address addrezz) public view returns (bool) {
        return _migratorsWhitelist[addrezz];
    }

    function getVestingInitiator(
        uint256 tokenId
    ) public view returns (address) {
        return _vestingInitiator[tokenId];
    }

    function _setReleaseWarmup(uint256 warmup) internal {
        _releaseWarmup = warmup;
        emit ReleaseWarmupUpdated(warmup);
    }

    function _createBond(
        uint16 poolId,
        uint256 amount,
        address from,
        address to
    ) internal returns (uint256) {
        Pool memory pool = _getPoolOrRevert(poolId);
        /**
         * We're pulling funds so reverse the effect-interactions
         **/
        IERC20Metadata(pool.token).safeTransferFrom(
            from,
            address(this),
            amount
        );
        uint256 tokenId = _GOV_BOND.mint(to);
        /**
         * cannot manipulate timestamps to be back in time to have inflated maturity
         **/
        _bonds[tokenId] = Bond({
            poolId: poolId,
            timeMarker: block.timestamp, // solhint-disable-line not-rely-on-time
            amount: amount
        });
        emit BondCreated(to, tokenId, poolId, amount);
        return tokenId;
    }

    function _clawbackVested(uint256 tokenId, address to) internal {
        Bond storage bond = _bonds[tokenId];
        Pool memory pool = _getPoolOrRevert(bond.poolId);
        uint256 vestedAmount = vested(tokenId);
        _updateVesting(
            tokenId,
            VestingSchedule({amount: 0, cliff: 0, vesting: 0, start: 0})
        );
        bond.amount -= vestedAmount;
        IERC20Metadata(pool.token).safeTransfer(to, vestedAmount);
        emit VestedTokenClawed(tokenId, vestedAmount, to);
    }

    function _addMigrator(address migrator) internal {
        _migratorsWhitelist[migrator] = true;
        emit MigratorAdded(migrator);
    }

    function _removeMigrator(address migrator) internal {
        _migratorsWhitelist[migrator] = false;
        emit MigratorRemoved(migrator);
    }

    function _getNormalizedWeight(
        Pool memory pool,
        uint256 amount,
        uint256 timeMarker
    ) internal view returns (uint256) {
        IERC20Metadata fromToken = IERC20Metadata(pool.token);
        uint256 initialWeight = _getWeight(pool, amount, timeMarker);
        return initialWeight / 10 ** fromToken.decimals();
    }

    function _getPoolOrRevert(
        uint16 poolId
    ) internal view returns (Pool memory) {
        Pool memory pool = getPoolById(poolId);
        if (pool.token == address(0x0)) {
            revert PoolNotInitialized(poolId);
        }
        return pool;
    }

    /**
     * computes the amount of tokens past the warm up time
     * @param tokenId tokenId
     * @return number of queued items consumed
     * @return amount accumulated
     */
    function _releasableTokens(
        uint256 tokenId
    ) internal view returns (uint8, uint256) {
        BondRelease[] storage releases = _bondReleases[tokenId];
        uint8 i = 0;
        uint256 releasedAmount = 0;
        // loops limited to MAX_RELEASE_QUEUE_LENGTH in the breakBond fn
        while (i < releases.length) {
            BondRelease storage bondRelease = releases[i];
            /**
             * not too time sensitive
             */
            // solhint-disable-next-line not-rely-on-time
            if (block.timestamp >= bondRelease.time) {
                releasedAmount += bondRelease.amount;
                i++;
            } else {
                break;
            }
        }
        return (i, releasedAmount);
    }
}
