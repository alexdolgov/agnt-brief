// SPDX-License-Identifier: MIT
/**
 _____
/  __ \
| /  \/ ___  _ ____   _____ _ __ __ _  ___ _ __   ___ ___
| |    / _ \| '_ \ \ / / _ \ '__/ _` |/ _ \ '_ \ / __/ _ \
| \__/\ (_) | | | \ V /  __/ | | (_| |  __/ | | | (_|  __/
 \____/\___/|_| |_|\_/ \___|_|  \__, |\___|_| |_|\___\___|
                                 __/ |
                                |___/
 */
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

import "../../../interfaces/ICvgControlTowerV2.sol";
import "../../../interfaces/Convex/ICvxLocker.sol";
import "../../../interfaces/Convex/ICvxAssetWrapper.sol";
import "../../../interfaces/ICrvPoolPlain.sol";
import "../../../interfaces/Convex/ICvxAssetStakerBuffer.sol";

/// @title Cvg Finance - CvxAssetStakerBuffer
/// @notice Stakes all cvxAsset received through the associated CvxAssetStakingService.
///         Claims, accumulates and process the rewards for stakers until the weekly distribution.
contract CvxAssetStakerBuffer is Ownable2StepUpgradeable {
    using SafeERC20 for IERC20;

    /// @dev Convergence control tower
    ICvgControlTowerV2 public constant cvgControlTower = ICvgControlTowerV2(0xB0Afc8363b8F36E0ccE5D54251e20720FfaeaeE7);

    /// @dev Used to calculate the percentage of fees
    uint256 private constant DENOMINATOR = 100_000;

    /// @dev Convex liquid locker of the base asset. ex : cvxCRV
    IERC20 public cvxAsset;

    /// @dev Staker & Wrapper of the associated cvxAsset. ex : stkCvxCrv
    ICvxAssetWrapper public cvxAssetWrapper;

    /// @dev Staking service associated to the buffer
    address public cvxAssetStakingService;

    /// @notice Receiver of all Convex rewards.
    ICvxRewardDistributor public cvxRewardDistributor;

    /// @dev Curve Stable Pool address of cvxAsset/Asset
    ICrvPoolPlain public curvePool;

    /// @notice Allows to switch between 2 different types of signature during the call to stake on the wrapper.
    uint256 public stakingType;

    /// @notice Contains all rewarded ERC20 and associated fees taken
    ICvxAssetStakerBuffer.CvxRewardConfig[] public rewardTokensConfigs;

    mapping(IERC20 => uint256) public withdrawableFees; // TokenAddress => amount of Fees

    enum OUT_TOKEN_TYPE {
        STK_CVX_ASSET,
        CVX_ASSET,
        ASSET
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                            INIT
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     * @notice Initialize function of the staking contract, can only be called once.
     * @param _cvxAsset                Convex liquid locker ERC20
     * @param _cvxAssetWrapper         Liquid locker wrapper
     * @param _cvxAssetStakingService  Staking contract linked to the StakerBuffer
     * @param _stakingType             Type of the signature on liquid locker staking
     * @param _rewardTokensConfigs     Rewarded ERC20 and associated fees taken
     */
    function initialize(
        IERC20 _cvxAsset,
        ICvxAssetWrapper _cvxAssetWrapper,
        address _cvxAssetStakingService,
        ICrvPoolPlain _curvePool,
        ICvxRewardDistributor _cvxRewardDistributor,
        uint256 _stakingType,
        ICvxAssetStakerBuffer.CvxRewardConfig[] calldata _rewardTokensConfigs
    ) external initializer {
        require(address(_cvxAsset) != address(0), "CVX_ASSET");
        cvxAsset = _cvxAsset;

        require(address(_cvxAssetWrapper) != address(0), "CVX_ASSET_WRAPPER");
        cvxAssetWrapper = _cvxAssetWrapper;

        require(address(_cvxAssetStakingService) != address(0), "CVX_ASSET_STAKING");
        cvxAssetStakingService = _cvxAssetStakingService;

        curvePool = _curvePool;

        require(address(_cvxRewardDistributor) != address(0), "CVX_REWARD_DISTRIBUTOR");
        cvxRewardDistributor = _cvxRewardDistributor;

        address treasuryDao = cvgControlTower.treasuryDao();
        require(treasuryDao != address(0), "TREASURY_DAO");
        _transferOwnership(treasuryDao);

        stakingType = _stakingType;

        for (uint256 i; i < _rewardTokensConfigs.length; ) {
            rewardTokensConfigs.push(_rewardTokensConfigs[i]);
            unchecked {
                i++;
            }
        }

        /// @dev Allows the liquid locker wrapper to transfer the liquid locker tokens that are on this contract
        _cvxAsset.approve(address(_cvxAssetWrapper), type(uint256).max);

        /// @dev Allows to swap some cvxAsset Asset to Asset on the stable pool
        _cvxAsset.approve(address(_curvePool), type(uint256).max);
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                    STAKING SERVICE FUNCTIONS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     * @notice Function called by the corresponding staking service during a deposit.
     * @dev    Only callable by the staking service
     * @param  feeAmount  Amount of fee in cvxAsset to register for futur withdrawal.
     * @param  isStake    If the deposit is done though staking
     */
    function postStaking(uint256 feeAmount, bool isStake) external {
        require(cvxAssetStakingService == msg.sender, "NOT_CVX_ASSET_STAKING_SERVICE");
        if (isStake) {
            stakeCvxAsset();
        }
        /// @dev Transfer the fees to the Convex Treasury
        else {
            cvxAsset.transfer(cvgControlTower.convexTreasury(), feeAmount);
        }
    }

    /**
     * @notice Withdraw an amount of stkCvxAsset that can be converted to cvxAsset or asset.
     * @dev    Only callable by the withdraw function from the associated staking service.
     * @param amount           Amount of cvxAsset to withdraw.
     * @param outTokenType     Set the type of the asset to be returned ( stkCvxAsset, cvxAsset or asset )
     * @param withdrawer       Address that is withdrawing the ERC20.
     * @param minAssetOut      Minimum out of Asset in the case we pick the outTokenType as Asset
     */
    function withdraw(uint256 amount, OUT_TOKEN_TYPE outTokenType, address withdrawer, uint256 minAssetOut) external {
        require(cvxAssetStakingService == msg.sender, "NOT_CVX_ASSET_STAKING_SERVICE");

        /// @dev Withdraw as Asset
        if (outTokenType == OUT_TOKEN_TYPE.ASSET) {
            uint256 actualBalance = cvxAsset.balanceOf(address(this));

            /// @dev In case there is not enough cvxAsset pending on the contract, we need to withdraw from the staker
            if (actualBalance < amount) {
                cvxAssetWrapper.withdraw(amount - actualBalance);
            }
            /// @dev Exchange the cvxAsset to Asset
            curvePool.exchange(1, 0, amount, minAssetOut, withdrawer);
        }
        /// @dev Withdraw as CvxAsset
        else if (outTokenType == OUT_TOKEN_TYPE.CVX_ASSET) {
            IERC20 _cvxAsset = cvxAsset;
            uint256 actualBalance = _cvxAsset.balanceOf(address(this));

            /// @dev In case there is not enough cvxAsset pending on the contract, we need to withdraw from the staker
            if (actualBalance < amount) {
                cvxAssetWrapper.withdraw(amount - actualBalance);
            }

            _cvxAsset.transfer(withdrawer, amount);
        }
        /// @dev Returns stkCVXCRV
        else {
            cvxAssetWrapper.transfer(withdrawer, amount);
        }
    }

    /**
     * @notice Processes rewards from Convex to stakers for the previous cycle.
     * @dev    Once a cycle, this function is callable from the Staking Service associated.
     *             It :
     *              - Stakes all cvxAsset owned by the contract in the associated wrapper
     *              - Claims all rewards
     *              - Computes the Treasury Fees & increment the value in withdrawableFees
     *              - Computes and transfers the rewards for stakers to the CvxRewardDistributor.
     *              - Writes the amount rewards distributed on this cycle in the associated Staking Service
     * @return An array of token amount to the Staking Service
     **/
    function pullRewards(address processor) external returns (ICommonStruct.TokenAmount[] memory) {
        require(cvxAssetStakingService == msg.sender, "NOT_CVX_ASSET_STAKING_SERVICE");

        address rewardReceiver = address(cvxRewardDistributor);
        uint256 rewardLength = rewardTokensConfigs.length;

        /// @dev Stakes all cvxAsset pending on the contract
        stakeCvxAsset();
        /// @dev Claim all rewards from stkCvxAsset
        cvxAssetWrapper.getReward(address(this));

        ICommonStruct.TokenAmount[] memory rewardAssets = new ICommonStruct.TokenAmount[](rewardLength);
        uint256 counterDelete;
        for (uint256 i; i < rewardLength; ) {
            ICvxAssetStakerBuffer.CvxRewardConfig memory rewardConfig = rewardTokensConfigs[i];
            IERC20 token = rewardConfig.token;
            uint256 withdrawableFeeAmount = withdrawableFees[token];

            /// @dev The amount of reward distributed is the balance minus fees accumulated on the buffer
            uint256 rewardsAvailable = token.balanceOf(address(this)) - withdrawableFeeAmount;

            /// @dev Processor fee is a percentage of the rewards available for processing
            uint256 processorFees = (rewardsAvailable * rewardConfig.processorFees) / DENOMINATOR;
            /// @dev Treasury Fees is a percentage of the rewards available for processing
            uint256 convexTreasury = (rewardsAvailable * rewardConfig.convexTreasury) / DENOMINATOR;
            /// @dev The amount to distribute to the stakers is the rewardsAvailable without the fees
            uint256 amountToStakers = rewardsAvailable - convexTreasury - processorFees;

            if (amountToStakers != 0) {
                token.safeTransfer(rewardReceiver, amountToStakers);
                rewardAssets[i - counterDelete] = ICommonStruct.TokenAmount({token: token, amount: amountToStakers});
            }

            if (processorFees != 0) {
                token.safeTransfer(processor, processorFees);
            }

            if (convexTreasury != 0) {
                withdrawableFees[token] = withdrawableFeeAmount + convexTreasury;
            }

            if (rewardsAvailable == 0) {
                unchecked {
                    ++counterDelete;
                }
            }
            unchecked {
                ++i;
            }
        }

        // solhint-disable-next-line no-inline-assembly
        assembly {
            mstore(rewardAssets, sub(mload(rewardAssets), counterDelete))
        }
        return rewardAssets;
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                        OPEN FUNCTIONS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     * @notice Stake all cvxAsset owned by the contract to stkCvxAsset.
     * @dev Regarding the type of the staking, use different signature. (cvxCRV is for now the only different from the others)
     */
    function stakeCvxAsset() public {
        uint256 cvxAssetBalance = cvxAsset.balanceOf(address(this));

        if (cvxAssetBalance != 0) {
            if (stakingType != 0) {
                cvxAssetWrapper.stake(cvxAssetBalance);
            } else {
                cvxAssetWrapper.stake(cvxAssetBalance, address(this));
            }
        }
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                        OWNER FUNCTIONS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /** @notice Setup the list of rewards and fees from Convex that the contract distributes as reward
     *  @dev    Callable only by the contract owner.
     */
    function setRewardTokensConfig(
        ICvxAssetStakerBuffer.CvxRewardConfig[] calldata _rewardTokensConfigs
    ) external onlyOwner {
        delete rewardTokensConfigs;

        address _cvxAsset = address(cvxAsset);
        address _stkCvxAsset = address(cvxAssetWrapper);

        for (uint256 i; i < _rewardTokensConfigs.length; ) {
            address token = address(_rewardTokensConfigs[i].token);
            /// @dev The cvxAsset cannot be setup as reward as it's also the underlying and is staked on this contract
            require(token != _cvxAsset, "REWARD_CANT_BE_CVX_ASSET");
            /// @dev The stkCvxAsset cannot be setup as reward as it's also the underlying and is staked on this contract
            require(token != _stkCvxAsset, "REWARD_CANT_BE_STK_CVX_ASSET");
            rewardTokensConfigs.push(_rewardTokensConfigs[i]);
            unchecked {
                ++i;
            }
        }
    }

    /** @notice For cvxCRV only, allows to set the type of reward we are getting. ( Assets or Stable )
     *  @dev    Callable only by the contract owner.
     *  @param  weight of the reward in % (max 10_000), 10_000 is full stable
     */
    function setRewardWeight(uint256 weight) external onlyOwner {
        cvxAssetWrapper.setRewardWeight(weight);
    }

    /**
     * @notice Method used to transfer tokens received on this contract.
     * @dev Callable by the owner only.
     * @param tokens Address of each token
     **/
    function withdrawFees(IERC20[] calldata tokens) external onlyOwner {
        address convexTreasury = cvgControlTower.convexTreasury();
        for (uint256 i; i < tokens.length; ) {
            /// @dev Gas saving by letting 1 here
            uint256 withdrawableFeeAmount = withdrawableFees[tokens[i]] - 1;
            require(withdrawableFeeAmount > 1, "NO_FEE_TO_WITHDRAW");

            tokens[i].transfer(convexTreasury, withdrawableFeeAmount);
            withdrawableFees[tokens[i]] = 1;
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Method used to transfer tokens received on this contract.
     * @dev Callable by the owner only.
     * @param tokens Address of each token
     **/
    function recoverTokens(IERC20[] calldata tokens) external onlyOwner {
        uint256 rewardTokensConfigsLength = rewardTokensConfigs.length;

        address convexTreasury = cvgControlTower.convexTreasury();
        address _cvxAsset = address(cvxAsset);
        address _stkCvxAsset = address(cvxAssetWrapper);
        for (uint256 i; i < tokens.length; ) {
            IERC20 _token = tokens[i];
            require(address(_token) != _cvxAsset, "CANT_RECOVER_CVX_ASSET");
            require(address(_token) != _stkCvxAsset, "CANT_RECOVER_STK_CVX_ASSET");

            for (uint256 j; j < rewardTokensConfigsLength; ) {
                require(address(_token) != address(rewardTokensConfigs[j].token), "REWARD_TOKEN_CANT_BE_RECOVERED");
                unchecked {
                    ++j;
                }
            }

            _token.transfer(convexTreasury, _token.balanceOf(address(this)));

            unchecked {
                ++i;
            }
        }
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                            VIEWS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */
    function getRewardTokensConfig() external view returns (ICvxAssetStakerBuffer.CvxRewardConfig[] memory) {
        return rewardTokensConfigs;
    }
}
