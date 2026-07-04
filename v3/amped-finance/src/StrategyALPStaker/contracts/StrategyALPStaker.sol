// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.15;

// These are the core Yearn libraries
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./BaseStrategy.sol"; // Import from local file

interface IOracle {
    // pull our WS price from chainlink (8 decimals)
    function latestAnswer() external view returns (uint256);
}

interface IAmpedFi is IERC20 {
    function claimable(address) external view returns (uint256);

    function pairAmounts(address) external view returns (uint256);

    function handleRewards(bool, bool, bool, bool) external;

    function signalTransfer(address) external;

    function acceptTransfer(address) external;

    function mintAndStakeGlp(
        address,
        uint256,
        uint256,
        uint256
    ) external returns (uint256);
}

contract StrategyALPStaker is BaseStrategy {
    using SafeERC20 for IERC20;
    /* ========== STATE VARIABLES ========== */

    /// @notice Amped's reward router.
    /// @dev Used for staking/unstaking assets and claiming rewards.
    IAmpedFi public constant rewardRouter =
        IAmpedFi(0xE72A2d5B3b09c88D4E8Cc60e74BD438d7168e80F); // From deploy-sonic.json

    /// @notice ALP, the LP token for the basket of collateral assets on Amped.
    IAmpedFi public constant alp =
        IAmpedFi(0x6fbaeE8bEf2e8f5c34A08BdD4A4AB777Bd3f6764); // From deploy-sonic.json

    /// @notice fsALP, the representation of our staked ALP that the strategy holds.
    IAmpedFi public constant fsAlp =
        IAmpedFi(0xB895e3DBFB37A4Cc6b4FB50B1cf903608e942FF9); // RewardTrackerFeeStakedGLP from deploy-sonic.json

    /// @notice Address for WS, our fee token.
    IERC20 public constant weth =
        IERC20(0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38); // WS from deploy-sonic.json

    /// @notice Minimum profit size in USDC that we want to harvest.
    /// @dev Only used in harvestTrigger.
    uint256 public harvestProfitMinInUsdc;

    /// @notice Maximum profit size in USDC that we want to harvest (ignore gas price once we get here).
    /// @dev Only used in harvestTrigger.
    uint256 public harvestProfitMaxInUsdc;

    // we use this to be able to adjust our strategy's name
    string internal stratName;

    // this means all of our fee values are in basis points
    uint256 internal constant FEE_DENOMINATOR = 10_000;

    /* ========== CONSTRUCTOR ========== */

    constructor(address _vault) BaseStrategy(_vault) {
        // No need to check if want token is ALP since this strategy is designed for wALP
        
        // Set approval for ALP manager
        address alpManager = 0x4DE729B85dDB172F1bb775882f355bA25764E430; // GlpManager from deploy-sonic.json
        weth.approve(address(alpManager), type(uint256).max);

        // set up our max delay
        maxReportDelay = 7 days;

        // set our min and max profit
        harvestProfitMinInUsdc = 1_000e6;
        harvestProfitMaxInUsdc = 10_000e6;

        // set our strategy's name
        stratName = "StrategyALPStaker";
    }

    /* ========== VIEWS ========== */

    /// @notice Strategy name.
    function name() external view override returns (string memory) {
        return stratName;
    }

    /// @notice Total assets the strategy holds.
    function estimatedTotalAssets() public view override returns (uint256) {
        // For wALP strategy, we simply return the balance of want (wALP) token
        return want.balanceOf(address(this));
    }

    /// @notice Balance of WS sitting in our strategy.
    function balanceOfWeth() public view returns (uint256) {
        return weth.balanceOf(address(this));
    }

    /// @notice Balance of WS claimable from ALP fees.
    function claimableWeth() public view returns (uint256) {
        // Since we're dealing with wALP, not directly with fsALP, we can't directly claim
        // rewards. In a real implementation, this would need to be adapted to work with wALP.
        return 0;
    }

    /* ========== CORE STRATEGY FUNCTIONS ========== */

    function prepareReturn(
        uint256 _debtOutstanding
    )
        internal
        override
        returns (uint256 _profit, uint256 _loss, uint256 _debtPayment)
    {
        // For wALP, we don't need to handle rewards directly as they're handled by the wALP vault
        
        // serious loss should never happen, but if it does, let's record it accurately
        uint256 assets = estimatedTotalAssets();
        uint256 debt = vault.strategies(address(this)).totalDebt;

        // if assets are greater than debt, things are working great!
        if (assets >= debt) {
            unchecked {
                _profit = assets - debt;
            }
            _debtPayment = _debtOutstanding;

            uint256 toFree = _profit + _debtPayment;

            // freed is math.min(wantBalance, toFree)
            (uint256 freed, ) = liquidatePosition(toFree);

            if (toFree > freed) {
                if (_debtPayment > freed) {
                    _debtPayment = freed;
                    _profit = 0;
                } else {
                    unchecked {
                        _profit = freed - _debtPayment;
                    }
                }
            }
        }
        // if assets are less than debt, we are in trouble. don't worry about withdrawing here, just report losses
        else {
            unchecked {
                _loss = debt - assets;
            }
        }
    }

    function adjustPosition(uint256 _debtOutstanding) internal override {
        // For wALP strategy, we don't need to actively adjust positions
        // as wALP already handles the staking and rewards
        
        // if in emergency exit, we don't want to deploy any more funds
        if (emergencyExit) {
            return;
        }
    }

    function liquidatePosition(
        uint256 _amountNeeded
    ) internal override returns (uint256 _liquidatedAmount, uint256 _loss) {
        // check our balance of want (wALP)
        uint256 _wantBal = want.balanceOf(address(this));
        
        if (_amountNeeded > _wantBal) {
            _liquidatedAmount = _wantBal;
            unchecked {
                _loss = _amountNeeded - _liquidatedAmount;
            }
        } else {
            // we have enough balance to cover the liquidation
            _liquidatedAmount = _amountNeeded;
        }
    }

    // fire sale, get rid of it all!
    function liquidateAllPositions() internal override returns (uint256) {
        return want.balanceOf(address(this));
    }

    // want is blocked by default, add any other tokens to protect from gov here.
    function protectedTokens()
        internal
        view
        override
        returns (address[] memory)
    {}

    // migrate our want token to a new strategy if needed
    function prepareMigration(address _newStrategy) internal override {
        uint256 wantBalance = want.balanceOf(address(this));
        if (wantBalance > 0) {
            want.safeTransfer(_newStrategy, wantBalance);
        }
        
        uint256 wethBalance = balanceOfWeth();
        if (wethBalance > 0) {
            weth.safeTransfer(_newStrategy, wethBalance);
        }
    }

    /* ========== KEEP3RS ========== */

    /**
     * @notice
     *  Provide a signal to the keeper that harvest() should be called.
     *
     *  Don't harvest if a strategy is inactive.
     *  If our profit exceeds our upper limit, then harvest no matter what. For
     *  our lower profit limit, credit threshold, max delay, and manual force trigger,
     *  only harvest if our gas price is acceptable.
     *
     * @param callCostinEth The keeper's estimated gas cost to call harvest() (in wei).
     * @return True if harvest() should be called, false otherwise.
     */
    function harvestTrigger(
        uint256 callCostinEth
    ) public view override returns (bool) {
        // Should not trigger if strategy is not active (no assets and no debtRatio). This means we don't need to adjust keeper job.
        if (!isActive()) {
            return false;
        }

        // check if the base fee gas price is higher than we allow. if it is, block harvests.
        if (!isBaseFeeAcceptable()) {
            return false;
        }

        // trigger if we want to manually harvest, but only if our gas price is acceptable
        if (forceHarvestTriggerOnce) {
            return true;
        }

        StrategyParams memory params = vault.strategies(address(this));
        // harvest regardless of profit once we reach our maxDelay
        if (block.timestamp - params.lastReport > maxReportDelay) {
            return true;
        }

        // harvest our credit if it's above our threshold
        if (vault.creditAvailable() > creditThreshold) {
            return true;
        }

        // otherwise, we don't harvest
        return false;
    }

    /// @notice Convert our keeper's eth cost into want
    /// @dev We don't use this since we don't factor call cost into our harvestTrigger.
    /// @param _ethAmount Amount of ether spent.
    /// @return Value of ether in want.
    function ethToWant(
        uint256 _ethAmount
    ) public view override returns (uint256) {
        // Not implemented
        return 0;
    }

    /* ========== SETTERS ========== */
    // These functions are useful for setting parameters of the strategy that may need to be adjusted.

    /**
     * @notice
     *  Here we set various parameters to optimize our harvestTrigger.
     * @param _harvestProfitMinInUsdc The amount of profit (in USDC, 6 decimals)
     *  that will trigger a harvest if gas price is acceptable.
     * @param _harvestProfitMaxInUsdc The amount of profit in USDC that
     *  will trigger a harvest regardless of gas price.
     */
    function setHarvestTriggerParams(
        uint256 _harvestProfitMinInUsdc,
        uint256 _harvestProfitMaxInUsdc
    ) external onlyEmergencyAuthorized {
        harvestProfitMinInUsdc = _harvestProfitMinInUsdc;
        harvestProfitMaxInUsdc = _harvestProfitMaxInUsdc;
    }
} 