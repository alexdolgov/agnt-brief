// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {MoreVaultsLib} from "@More-Vaults-Core/src/libraries/MoreVaultsLib.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {AccessControlLib} from "@More-Vaults-Core/src/libraries/AccessControlLib.sol";
import {BaseFacetInitializer} from "@More-Vaults-Core/src/facets/BaseFacetInitializer.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ILiquidityGaugeV6} from "../interfaces/Curve/ILiquidityGaugeV6.sol";
import {IMinter} from "../interfaces/Curve/IMinter.sol";
import {ICurveLiquidityGaugeV6Facet} from "../interfaces/facets/ICurveLiquidityGaugeV6Facet.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title CurveLiquidityGaugeV6Facet
 * @notice Facet for handling staking into LiquidityGaugeV6 smart contract
 * @dev Implements functionality to stake/withdraw of the lp tokens and claim of rewards
 */
contract CurveLiquidityGaugeV6Facet is
    ICurveLiquidityGaugeV6Facet,
    BaseFacetInitializer
{
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;

    bytes32 constant CURVE_LIQUIDITY_GAUGES_V6_ID =
        keccak256("CURVE_LIQUIDITY_GAUGES_V6_ID");

    function INITIALIZABLE_STORAGE_SLOT()
        internal
        pure
        override
        returns (bytes32)
    {
        return
            keccak256(
                "MoreVaults.storage.initializable.CurveLiquidityGaugeV6Facet"
            );
    }

    /**
     * @notice Returns the name of the facet
     * @return The facet name
     */
    function facetName() external pure returns (string memory) {
        return "CurveLiquidityGaugeV6Facet";
    }

    function facetVersion() external pure returns (string memory) {
        return "1.0.0";
    }

    function initialize(bytes calldata data) external initializerFacet {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        ds.supportedInterfaces[
            type(ICurveLiquidityGaugeV6Facet).interfaceId
        ] = true;
        (address facetAddress, address minter, bytes32 facetSelector) = abi
            .decode(data, (address, address, bytes32));
        ds.facetsForAccounting.push(facetSelector);
        ds.beforeAccountingFacets.push(facetAddress);
        ds.minter = minter;
        ds.vaultExternalAssets[MoreVaultsLib.TokenType.StakingToken].add(
            CURVE_LIQUIDITY_GAUGES_V6_ID
        );
    }

    function onFacetRemoval(bool isReplacing) external {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        ds.supportedInterfaces[
            type(ICurveLiquidityGaugeV6Facet).interfaceId
        ] = false;

        MoreVaultsLib.removeFromBeforeAccounting(ds, ds.facetOnRemoval, isReplacing);
        MoreVaultsLib.removeFromFacetsForAccounting(
            ds,
            ICurveLiquidityGaugeV6Facet.accountingCurveLiquidityGaugeV6Facet.selector,
            isReplacing
        );

        if (!isReplacing) {
            ds.vaultExternalAssets[MoreVaultsLib.TokenType.StakingToken].remove(
                CURVE_LIQUIDITY_GAUGES_V6_ID
            );
        }
    }

    function beforeAccounting() external {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();

        EnumerableSet.AddressSet storage gauges = ds.stakingAddresses[
            CURVE_LIQUIDITY_GAUGES_V6_ID
        ];

        IMinter minter = IMinter(ds.minter);
        address token = IMinter(minter).token();
        if (!ds.isAssetAvailable[token]) return;

        address[] memory gaugesArray = gauges.values();
        if (gaugesArray.length == 0) return;

        for (uint256 i = 0; i < gaugesArray.length; ) {
            address[8] memory gaugesArray8;
            uint256 batchSize;

            for (uint256 j = 0; j < 8 && i + j < gaugesArray.length; ) {
                gaugesArray8[j] = gaugesArray[i + j];
                batchSize++;
                unchecked {
                    ++j;
                }
            }

            if (batchSize > 0) {
                minter.mint_many(gaugesArray8);
            }

            i += batchSize;
        }
    }

    function accountingCurveLiquidityGaugeV6Facet()
        external
        view
        returns (uint256 sum, bool isPositive)
    {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        EnumerableSet.AddressSet storage gauges = ds.stakingAddresses[
            CURVE_LIQUIDITY_GAUGES_V6_ID
        ];

        for (uint256 i = 0; i < gauges.length(); ) {
            ILiquidityGaugeV6 gauge = ILiquidityGaugeV6(gauges.at(i));
            uint256 numberOfRewardTokens = gauge.reward_count();

            for (uint256 j = 0; j < numberOfRewardTokens; ) {
                address rewardToken = gauge.reward_tokens(j);
                if (!ds.isAssetAvailable[rewardToken]) {
                    ++j;
                    continue;
                }
                uint256 reward = gauge.claimable_reward(
                    address(this),
                    rewardToken
                );

                sum += MoreVaultsLib.convertToUnderlying(
                    rewardToken,
                    reward,
                    Math.Rounding.Floor
                );
                unchecked {
                    ++j;
                }
            }
            unchecked {
                ++i;
            }
        }
        isPositive = true;
    }

    /**
     * @inheritdoc ICurveLiquidityGaugeV6Facet
     */
    function depositCurveGaugeV6(address gauge, uint256 amount) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(gauge);
        ILiquidityGaugeV6 _gauge = ILiquidityGaugeV6(gauge);
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();

        IERC20 lpToken = IERC20(_gauge.lp_token());

        // we have to save dust for lock checks in `beforeAccounting` of CurveFacet
        if (
            10e5 >= lpToken.balanceOf(address(this)) - amount &&
            ds.isNecessaryToCheckLock[address(lpToken)]
        ) {
            amount -= 10e5;
        }
        lpToken.forceApprove(gauge, amount);
        _gauge.deposit(amount, address(this), false);

        ds.stakingAddresses[CURVE_LIQUIDITY_GAUGES_V6_ID].add(gauge);
        ds.stakingTokenToGauge[address(lpToken)] = gauge;
        ds.lockedTokens[address(lpToken)] += amount;
    }

    /**
     * @inheritdoc ICurveLiquidityGaugeV6Facet
     */
    function withdrawCurveGaugeV6(address gauge, uint256 amount) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(gauge);
        ILiquidityGaugeV6(gauge).withdraw(amount, false);

        IERC20 lpToken = IERC20(ILiquidityGaugeV6(gauge).lp_token());
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        ds.lockedTokens[address(lpToken)] -= amount;

        _cleanupGaugeIfEmpty(gauge);
    }

    /**
     * @inheritdoc ICurveLiquidityGaugeV6Facet
     */
    function claimRewardsCurveGaugeV6(address gauge) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(gauge);
        ILiquidityGaugeV6 _gauge = ILiquidityGaugeV6(gauge);

        _gauge.claim_rewards(address(this), address(this));

        _cleanupGaugeIfEmpty(gauge);
    }

    /**
     * @inheritdoc ICurveLiquidityGaugeV6Facet
     */
    function mintCRV(address minterContract, address gauge) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(minterContract);
        IMinter minter = IMinter(minterContract);
        MoreVaultsLib.validateAssetAvailable(minter.token());
        minter.mint(gauge);
    }

    /**
     * @notice Cleanup gauge-related storage if there is no stake and no pending rewards
     * @param gauge The address of the Curve gauge
     */
    function _cleanupGaugeIfEmpty(address gauge) internal {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();

        ILiquidityGaugeV6 _gauge = ILiquidityGaugeV6(gauge);

        // no remaining staked balance in the gauge
        try IERC20(gauge).balanceOf(address(this)) returns (uint256 stakedBal) {
            if (stakedBal != 0) {
                return;
            }
        } catch {
            // If balanceOf cannot be read (e.g. not ERC20 or missing mock), skip cleanup to avoid revert
            return;
        }

        // no pending rewards for any reward token
        uint256 rewardsCount;
        try _gauge.reward_count() returns (uint256 rc) {
            rewardsCount = rc;
        } catch {
            return;
        }
        for (uint256 i = 0; i < rewardsCount; ) {
            address rewardToken;
            try _gauge.reward_tokens(i) returns (address rt) {
                rewardToken = rt;
            } catch {
                return;
            }
            uint256 claimable;
            try _gauge.claimable_reward(address(this), rewardToken) returns (uint256 amt) {
                claimable = amt;
            } catch {
                return;
            }
            if (claimable != 0) {
                return;
            }
            unchecked {
                ++i;
            }
        }

        // remove gauge from staking set and clear lpToken mapping
        ds.stakingAddresses[CURVE_LIQUIDITY_GAUGES_V6_ID].remove(gauge);

        address lpToken = _gauge.lp_token();
        if (ds.lockedTokens[lpToken] == 0) {
            ds.stakingTokenToGauge[lpToken] = address(0);
        }
    }
}