// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";

import {IRewardDistributor} from "src/interfaces/dao/IRewardDistributor.sol";
import {IMultiAdapter} from "src/interfaces/dao/IMultiAdapter.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IPollenSwapper} from "src/interfaces/dao/IPollenSwapper.sol";
import {IFeeDistributor} from "src/interfaces/dao/ve/IFeeDistributor.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IPollenStaking} from "lib/rewards/interfaces/IPollenStaking.sol";

/**
 * @title RewardDistributor
 * @author Beraborrow
 * @notice This abstract implementation is responsible for handling reward harvesting, POLLEN rewards and distribution.
 */
abstract contract RewardDistributor is UUPSUpgradeable, IRewardDistributor {
    using SafeERC20 for IERC20;

    /// @notice The distribution day for POLLEN into vePOLLEN.
    uint256 public constant DISTRIBUTION_DATE = 2 weeks;
    /// @notice The basis point value for slippage calculations.
    uint256 public constant BP = 1e4;

    /// @notice Storage location for the RewardDistributor.
    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.RewardDistributor")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant RewardDistributorStorageLocation =
        0x6b688113c21392538b18e06bcccec5c45768a16a2b5ee1ecf3972e031e689000;

    /**
     * @notice Returns the current RewardDistributor storage.
     * @dev All storage reads and writes in this contract should use this function.
     * @return store The current RewardDistributor storage.
     */
    function _getRewardDistributorStorage()
        internal
        pure
        returns (RewardDistributorStorage storage store)
    {
        assembly {
            store.slot := RewardDistributorStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the RewardDistributor contract.
     * @param params The parameters for initializing the contract.
     * @dev This function can only be called once during the contract's lifetime.
     */
    function __RewardDistributor_init(
        RewardDistributorInitParams calldata params
    ) internal onlyInitializing {
        __RewardDistributor_init_unchained(params);
    }

    function __RewardDistributor_init_unchained(
        RewardDistributorInitParams calldata params
    ) internal onlyInitializing {
        RewardDistributorStorage storage $ = _getRewardDistributorStorage();

        if (
            params._metaBeraborrowCore == address(0) ||
            params._swapper == address(0) ||
            params._priceFeed == address(0) ||
            params._pollenPriceFeed == address(0) ||
            params._staking == address(0) ||
            params._veFeeDistributor == address(0) ||
            params._multiAdapter == address(0) ||
            params._treasury == address(0) ||
            params._pollen == address(0)
        ) revert ZeroAddress();

        $.metaBeraborrowCore = IMetaBeraborrowCore(params._metaBeraborrowCore);
        $.swapper = IPollenSwapper(params._swapper);
        $.priceFeed = IPriceFeed(params._priceFeed);
        $.pollenPriceFeed = ISpotOracle(params._pollenPriceFeed);
        $.staking = IPollenStaking(params._staking);
        $.veFeeDistributor = IFeeDistributor(params._veFeeDistributor);
        $.multiAdapter = IMultiAdapter(params._multiAdapter);

        $.treasury = params._treasury;
        $.keeper = params._keeper;

        $.pollen = params._pollen;
        $.inputToken = params._inputToken;

        $.slippageMult = 9900; // -1%
        $.ratio = 0; // 0% to stakers, 100% to vePOLLEN
    }

    /// @notice Modifier to restrict access to the owner.
    modifier onlyOwner() {
        if (
            msg.sender !=
            _getRewardDistributorStorage().metaBeraborrowCore.owner()
        ) revert OnlyOwner(msg.sender);
        _;
    }

    /**
     * @notice Authorizes the upgrade of the contract.
     * @dev Only the owner can authorize ERC1967 proxy upgrades.
     */
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    /**
     * @notice Called by keeper to trigger reward harvesting.
     * @param params The OBRouter parameters for the reward.
     * @dev This function can only be called by the keeper.
     */
    function harvestRewards(
        IRewardDistributor.SwapParams calldata params
    ) external virtual {}

    /**
     * @notice Sets the treasury address.
     * @param _treasury The new treasury address.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert ZeroAddress();
        _getRewardDistributorStorage().treasury = _treasury;
    }

    /**
     * @notice Sets the PollenSwapper implementation.
     * @param _swapper The new PollenSwapper implementation.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setSwapper(address _swapper) external onlyOwner {
        if (_swapper == address(0)) revert ZeroAddress();
        _getRewardDistributorStorage().swapper = IPollenSwapper(_swapper);
    }

    /**
     * @notice Sets the slippage tolerance for POLLEN rewards.
     * @param _slippageMult The new slippage multiplier in basis points.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setSlippageMult(uint256 _slippageMult) external onlyOwner {
        if (_slippageMult >= BP) revert OverBP();
        _getRewardDistributorStorage().slippageMult = _slippageMult;
    }

    /**
     * @notice Sets the reward fee cut.
     * @param _rewardFeeCut The new reward fee cut in basis points.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setRewardFeeCut(uint256 _rewardFeeCut) external onlyOwner {
        if (_rewardFeeCut >= BP) revert OverBP();
        _getRewardDistributorStorage().rewardFeeCut = _rewardFeeCut;
    }

    /**
     * @notice Sets the keeper address.
     * @param _keeper The new keeper address.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setKeeper(address _keeper) external onlyOwner {
        _getRewardDistributorStorage().keeper = _keeper;
    }

    /**
     * @notice Sets the ratio of POLLEN to be distributed to stakers.
     * @param _ratio The percentage of POLLEN to be distributed to stakers in basis points. The rest is sent to vePOLLEN.
     */
    function setRatio(uint256 _ratio) external onlyOwner {
        if (_ratio >= BP) revert OverBP();
        _getRewardDistributorStorage().ratio = _ratio;
    }

    /**
     * @notice Sets the input token for rewards compounding.
     * @param _inputToken The new input token address.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setInputToken(address _inputToken) external onlyOwner {
        _getRewardDistributorStorage().inputToken = _inputToken;
    }

    /**
     * @notice Sets the Pollen price feed.
     * @param _pollenPriceFeed The new Pollen price feed address.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setPollenPriceFeed(
        address _pollenPriceFeed
    ) external onlyOwner {
        if (_pollenPriceFeed == address(0)) revert ZeroAddress();
        _getRewardDistributorStorage().pollenPriceFeed = ISpotOracle(
            _pollenPriceFeed
        );
    }

    /**
     * @notice Sets whether slippage checks are enabled.
     * @param _slippageCheckEnabled The new slippage check status.
     * @dev This function can only be called by the owner of the MetaBeraborrowCore contract.
     */
    function setSlippageCheckEnabled(
        bool _slippageCheckEnabled
    ) external onlyOwner {
        _getRewardDistributorStorage().slippageCheckEnabled = _slippageCheckEnabled;
    }

    /**
     * @notice Returns the address of the MetaBeraborrowCore contract
     * @return The MetaBeraborrowCore contract address
     */
    function getMetaBeraborrowCore() external view returns (address) {
        return address(_getRewardDistributorStorage().metaBeraborrowCore);
    }

    /**
     * @notice Returns the address of the Swapper contract
     * @return The Swapper contract address used for token exchanges
     */
    function getSwapper() external view returns (address) {
        return address(_getRewardDistributorStorage().swapper);
    }

    /**
     * @notice Returns the address of the PriceFeed contract
     * @return The PriceFeed contract address used for token price data
     */
    function getPriceFeed() external view returns (address) {
        return address(_getRewardDistributorStorage().priceFeed);
    }

    /**
     * @notice Returns the address of the Staking contract
     * @return The Staking contract address
     */
    function getStaking() external view returns (address) {
        return address(_getRewardDistributorStorage().staking);
    }

    /**
     * @notice Returns the address of the veFeeDistributor contract
     * @return The veFeeDistributor contract address
     */
    function getVeFeeDistributor() external view returns (address) {
        return address(_getRewardDistributorStorage().veFeeDistributor);
    }

    /**
     * @notice Returns the address of the MultiAdapter contract
     * @return The MultiAdapter contract address
     */
    function getMultiAdapter() external view returns (address) {
        return address(_getRewardDistributorStorage().multiAdapter);
    }

    /**
     * @notice Returns the slippage multiplier value
     * @return The slippage multiplier used for swap operations
     */
    function getSlippageMult() external view returns (uint256) {
        return _getRewardDistributorStorage().slippageMult;
    }

    /**
     * @notice Returns the current distribution ratio
     * @return The distribution ratio used to split rewards
     */
    function getRatio() external view returns (uint256) {
        return _getRewardDistributorStorage().ratio;
    }

    /**
     * @notice Returns the total weekly amount allocated to veFeeDistributor
     * @return The weekly allocation amount for veFeeDistributor
     */
    function getTotalWeeklyVeSplit() external view returns (uint256) {
        return _getRewardDistributorStorage().totalWeeklyVeSplit;
    }

    /**
     * @notice Returns the percentage of fees allocated for token reward compounding
     * @return The reward compounding fee percentage
     */
    function getRewardFeeCut() external view returns (uint256) {
        return _getRewardDistributorStorage().rewardFeeCut;
    }

    /**
     * @notice Returns the address of the treasury
     * @return The treasury contract or wallet address
     */
    function getTreasury() external view returns (address) {
        return _getRewardDistributorStorage().treasury;
    }

    /**
     * @notice Returns the address of the keeper
     * @return The keeper address responsible for maintenance operations
     */
    function getKeeper() external view returns (address) {
        return _getRewardDistributorStorage().keeper;
    }

    /**
     * @notice Returns the timestamp of the last keeper operation
     * @return The timestamp when the keeper last performed an operation
     */
    function getLastKeeperTimestamp() external view returns (uint256) {
        return _getRewardDistributorStorage().lastKeeperTimestamp;
    }

    /**
     * @notice Returns the address of the Pollen token contract
     * @return The Pollen token contract address
     */
    function getPollen() external view returns (address) {
        return _getRewardDistributorStorage().pollen;
    }

    /**
     * @notice Returns the address of the input token
     * @return The input token address used for rewards or operations
     */
    function getInputToken() external view returns (address) {
        return _getRewardDistributorStorage().inputToken;
    }

    function getPollenPriceFeed()
        external
        view
        returns (address)
    {
        return address(_getRewardDistributorStorage().pollenPriceFeed);
    }

    /**
     * @notice Checks if slippage checks are enabled.
     * @return True if slippage checks are enabled, false otherwise.
     */
    function isSlippageCheckEnabled()
        external
        view
        returns (bool)
    {
        return _getRewardDistributorStorage().slippageCheckEnabled;
    }

    /**
     * @notice Swaps input token for POLLEN using the Enso router.
     * @param params The parameters for the swap.
     * @dev This function is called internally by the handleReward function.
     */
    function _swapToPollen(
        IRewardDistributor.SwapParams calldata params
    ) internal {
        IRewardDistributor.RewardDistributorStorage
            storage $ = _getRewardDistributorStorage();

        uint256 slippageMult = $.slippageMult;
        address inputToken = $.inputToken;
        IPollenSwapper swapper = $.swapper;

        uint256 inputBalance = IERC20(inputToken).balanceOf(address(this));
        if (inputBalance == 0) return;

        uint256 rewardCut = (inputBalance * $.rewardFeeCut) / BP;
        uint256 amountIn = inputBalance - rewardCut;

        uint256 amountOutBefore = IERC20($.pollen).balanceOf(address(this));
        uint256 priceIn = $.slippageCheckEnabled ? $.priceFeed.fetchPrice(inputToken) : 0;
        uint256 priceOut = $.slippageCheckEnabled ? $.pollenPriceFeed.fetchPrice() : 0;

        if (rewardCut > 0)
            IERC20(inputToken).safeTransfer($.treasury, rewardCut);

        IERC20(inputToken).safeTransfer(address(swapper), amountIn);
        swapper.swap(params, amountIn);

        uint256 amountOut = IERC20($.pollen).balanceOf(address(this)) -
            amountOutBefore;

        uint256 amountOutValue = (amountOut * priceOut);
        uint256 amountInValue = (amountIn * priceIn);

        uint256 slippageThreshold = BP - slippageMult;

        if ($.slippageCheckEnabled && amountOutValue < (amountInValue * slippageMult) / BP)
            revert SlippageExceeded(
                amountOutValue,
                amountInValue,
                slippageThreshold
            );

        emit Reward(amountIn, amountOut, slippageThreshold);
    }

    /**
     * @notice Sends POLLEN to the staking and vePollen contracts.
     * @param _ratio The percentage of POLLEN to be distributed to stakers in basis points.
     * @dev If timestamp + DISTRIBUTION_DATE is greater than the last funded week, it funds the veFeeDistributor.
     */
    function _sendPollenToStakingAndVe(uint256 _ratio) internal {
        IRewardDistributor.RewardDistributorStorage
            storage $ = _getRewardDistributorStorage();

        IFeeDistributor veFeeDistributor = $.veFeeDistributor;

        uint256 pollenBalance = IERC20($.pollen).balanceOf(address(this)) -
            $.totalWeeklyVeSplit;
        if (pollenBalance > 0) {
            uint256 stakingSplit = (pollenBalance * _ratio) / BP;
            uint256 veSplit = pollenBalance - stakingSplit;

            $.totalWeeklyVeSplit += veSplit;

            IERC20($.pollen).safeIncreaseAllowance(
                address($.staking),
                stakingSplit
            );
            $.staking.notifyRewardAmount($.pollen, stakingSplit);

            uint256 lastFundedWeek = veFeeDistributor.lastFundedWeek(
                address(this)
            );
            if (
                block.timestamp >= lastFundedWeek + DISTRIBUTION_DATE &&
                lastFundedWeek >=
                veFeeDistributor.firstFundedWeek(address(this))
            ) {
                address[] memory sources = new address[](1);
                sources[0] = address(this);

                uint256[] memory nextFundedWeek = new uint256[](1);
                nextFundedWeek[0] = lastFundedWeek + 1 weeks;
                uint256[] memory nextWeekSplit = new uint256[](1);
                nextWeekSplit[0] = $.totalWeeklyVeSplit;

                uint256[][] memory wTimes = new uint256[][](1);
                wTimes[0] = nextFundedWeek;
                uint256[][] memory amounts = new uint256[][](1);
                amounts[0] = nextWeekSplit;

                IERC20($.pollen).safeIncreaseAllowance(
                    address(veFeeDistributor),
                    $.totalWeeklyVeSplit
                );
                veFeeDistributor.fund(
                    sources,
                    wTimes,
                    amounts,
                    $.totalWeeklyVeSplit
                );

                $.totalWeeklyVeSplit = 0;
            }
        }
    }
}
