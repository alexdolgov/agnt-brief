// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import { ZircuitBaseStrategy } from "../ZircuitBaseStrategy.sol";
import { ERC20 } from "../tokenized-strategy/BaseStrategy.sol";

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IAToken } from "./interfaces/V3/IAtoken.sol";
import { IStakedAave } from "./interfaces/V3/IStakedAave.sol";
import { IPool } from "./interfaces/V3/IPool.sol";
import { IRewardsController } from "./interfaces/V3/IRewardsController.sol";

// Swappers
import { UniswapV3Swapper } from "../periphery/swappers/UniswapV3Swapper.sol";

interface IAuction {
    function want() external view returns (address);
    function receiver() external view returns (address);
    function kick(address _token) external returns (uint256);
}

contract AaveV3Lender is ZircuitBaseStrategy, UniswapV3Swapper {
    using SafeERC20 for ERC20;

    enum SwapType {
        NULL,
        UNISWAP_V3,
        AUCTION
    }

    address public auction;

    // Mapping to be set by management for any reward tokens.
    // This can be used to set different mins for different tokens
    // or to set to uin256.max if selling a reward token is reverting
    // to allow for reports to still work properly.
    mapping(address => uint256) public minAmountToSellMapping;

    mapping(address => SwapType) public swapType;

    IStakedAave internal constant stkAave =
        IStakedAave(0x4da27a545c0c5B758a6BA100e3a049001de870f5);
    address internal constant AAVE =
        address(0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9);

    // To get the Supply cap of an asset.
    uint256 internal constant SUPPLY_CAP_MASK = 0xFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF; // prettier-ignore
    uint256 internal constant SUPPLY_CAP_START_BIT_POSITION = 116;
    uint256 internal immutable decimals;

    // The pool to deposit and withdraw through.
    IPool public immutable lendingPool;

    // The a Token specific rewards contract for claiming rewards.
    IRewardsController public immutable rewardsController;

    // The token that we get in return for deposits.
    IAToken public immutable aToken;

    // Bool to decide to try and claim rewards. Defaults to False.
    bool public claimRewards;

    constructor(
        address _asset,
        string memory _name,
        address _lendingPool,
        address _router,
        address _base
    ) ZircuitBaseStrategy(_asset, _name) {
        lendingPool = IPool(_lendingPool);

        // Set the aToken based on the asset we are using.
        aToken = IAToken(lendingPool.getReserveData(_asset).aTokenAddress);

        // Make sure its a real token.
        require(address(aToken) != address(0), "!aToken");

        // Get aToken decimals for supply caps.
        decimals = ERC20(address(aToken)).decimals();

        // Set the rewards controller
        rewardsController = aToken.getIncentivesController();

        // Make approve the lending pool for cheaper deposits.
        asset.forceApprove(address(lendingPool), type(uint256).max);

        // Set uni swapper values
        // We will use the minAmountToSell mapping instead.
        minAmountToSell = 0;
        router = _router;
        base = _base;
    }

    /**
     * @notice Set the uni fees for swaps.
     * @dev External function available to management to set
     * the fees used in the `UniswapV3Swapper.
     *
     * Any incentivized tokens will need a fee to be set for each
     * reward token that it wishes to swap on reports.
     *
     * @param _token0 The first token of the pair.
     * @param _token1 The second token of the pair.
     * @param _fee The fee to be used for the pair.
     */
    function setUniFees(
        address _token0,
        address _token1,
        uint24 _fee
    ) external onlyManagement {
        _setUniFees(_token0, _token1, _fee);
    }

    /*//////////////////////////////////////////////////////////////
                NEEDED TO BE OVERRIDDEN BY STRATEGIST
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Should deploy up to '_amount' of 'asset' in the yield source.
     *
     * This function is called at the end of a {deposit} or {mint}
     * call. Meaning that unless a whitelist is implemented it will
     * be entirely permissionless and thus can be sandwiched or otherwise
     * manipulated.
     *
     * @param _amount The amount of 'asset' that the strategy should attempt
     * to deposit in the yield source.
     */
    function _deployFunds(uint256 _amount) internal override {
        lendingPool.supply(address(asset), _amount, address(this), 0);
    }

    /**
     * @dev Will attempt to free the '_amount' of 'asset'.
     *
     * The amount of 'asset' that is already loose has already
     * been accounted for.
     *
     * This function is called during {withdraw} and {redeem} calls.
     * Meaning that unless a whitelist is implemented it will be
     * entirely permissionless and thus can be sandwiched or otherwise
     * manipulated.
     *
     * Should not rely on asset.balanceOf(address(this)) calls other than
     * for diff accounting purposes.
     *
     * Any difference between `_amount` and what is actually freed will be
     * counted as a loss and passed on to the withdrawer. This means
     * care should be taken in times of illiquidity. It may be better to revert
     * if withdraws are simply illiquid so not to realize incorrect losses.
     *
     * Any difference between `_amount` and what is actually freed will be
     * counted as a loss and passed on to the withdrawer. This means
     * care should be taken in times of illiquidity. It may be better to revert
     * if withdraws are simply illiquid so not to realize incorrect losses.
     *
     * @param _amount, The amount of 'asset' to be freed.
     */
    function _freeFunds(uint256 _amount) internal override {
        lendingPool.withdraw(
            address(asset),
            Math.min(aToken.balanceOf(address(this)), _amount),
            address(this)
        );
    }

    /**
     * @dev Internal function to harvest all rewards, redeploy any idle
     * funds and return an accurate accounting of all funds currently
     * held by the Strategy.
     *
     * This should do any needed harvesting, rewards selling, accrual,
     * redepositing etc. to get the most accurate view of current assets.
     *
     * NOTE: All applicable assets including loose assets should be
     * accounted for in this function.
     *
     * Care should be taken when relying on oracles or swap values rather
     * than actual amounts as all Strategy profit/loss accounting will
     * be done based on this returned value.
     *
     * This can still be called post a shutdown, a strategist can check
     * `TokenizedStrategy.isShutdown()` to decide if funds should be
     * redeployed or simply realize any profits/losses.
     *
     * @return _totalAssets A trusted and accurate account for the total
     * amount of 'asset' the strategy currently holds including idle funds.
     */
    function _harvestAndReport()
        internal
        override
        returns (uint256 _totalAssets)
    {
        if (claimRewards) {
            // Claim and sell any rewards to `asset`.
            _claimAndSellRewards(address(0), 0);
        }

        _totalAssets = aToken.balanceOf(address(this)) + balanceOfAsset();
    }

    function balanceOfAsset() public view returns (uint256) {
        return asset.balanceOf(address(this));
    }

    function claimAndSellRewards(
        address _rewardToken,
        uint256 _minAmountOut
    ) external onlyKeepers {
        _claimAndSellRewards(_rewardToken, _minAmountOut);
    }

    /**
     * @notice Used to claim any pending rewards and sell them to asset.
     */
    function _claimAndSellRewards(
        address _rewardToken,
        uint256 _minAmountOut
    ) internal {
        // Claim any pending stkAave.
        _redeemAave();

        //claim all rewards
        address[] memory assets = new address[](1);
        assets[0] = address(aToken);
        (address[] memory rewardsList, ) = rewardsController
            .claimAllRewardsToSelf(assets);

        // Start cooldown on any new stkAave.
        _harvestStkAave();

        // Handle rewards by swapping to asset
        address token;
        for (uint256 i = 0; i < rewardsList.length; ++i) {
            token = rewardsList[i];

            // If a reward token is specified, only sell that token
            if (_rewardToken != address(0) && token != _rewardToken) {
                continue;
            }

            // Ignore underlying and aToken as rewards
            if (token == address(asset) || token == address(aToken)) {
                continue;
            } else if (token == address(stkAave)) {
                // Convert stkAAVE into AAVE if available via redeem path
                token = AAVE;
            }

            SwapType _swapType = swapType[token];
            uint256 balance = ERC20(token).balanceOf(address(this));

            if (balance > minAmountToSellMapping[token]) {
                if (_swapType == SwapType.UNISWAP_V3) {
                    _swapFrom(token, address(asset), balance, _minAmountOut);
                }
            }
        }
    }

    function _tend(uint256 _totalIdle) internal override {
        if (_totalIdle > 0 && !TokenizedStrategy.isShutdown()) {
            _deployFunds(_totalIdle);
        }
    }

    function _tendTrigger() internal view override returns (bool) {
        return !TokenizedStrategy.isShutdown() && balanceOfAsset() > 0;
    }

    function _redeemAave() internal {
        if (!checkCooldown()) {
            return;
        }

        uint256 stkAaveBalance = ERC20(address(stkAave)).balanceOf(
            address(this)
        );

        if (stkAaveBalance > 0) {
            stkAave.redeem(address(this), stkAaveBalance);
        }
    }

    function checkCooldown() public view returns (bool) {
        if (block.chainid != 1) return false;

        uint256 cooldownStartTimestamp = IStakedAave(stkAave)
            .stakersCooldowns(address(this))
            .timestamp;

        if (cooldownStartTimestamp == 0) return false;

        uint256 cooldownSeconds = IStakedAave(stkAave).getCooldownSeconds();
        uint256 UNSTAKE_WINDOW = IStakedAave(stkAave).UNSTAKE_WINDOW();
        if (block.timestamp >= cooldownStartTimestamp + cooldownSeconds) {
            return
                block.timestamp - (cooldownStartTimestamp + cooldownSeconds) <=
                UNSTAKE_WINDOW;
        } else {
            return false;
        }
    }

    function _harvestStkAave() internal {
        if (block.chainid != 1) return;

        // request start of cooldown period
        if (ERC20(address(stkAave)).balanceOf(address(this)) > 0) {
            stkAave.cooldown();
        }
    }

    function manualRedeemAave() external onlyKeepers {
        _redeemAave();
    }

    /**
     * @notice Gets the max amount of `asset` that an address can deposit.
     * @dev Defaults to an unlimited amount for any address. But can
     * be overridden by strategists.
     *
     * This function will be called before any deposit or mints to enforce
     * any limits desired by the strategist. This can be used for either a
     * traditional deposit limit or for implementing a whitelist etc.
     *
     *   EX:
     *      if(isAllowed[_owner]) return super.availableDepositLimit(_owner);
     *
     * This does not need to take into account any conversion rates
     * from shares to assets. But should know that any non max uint256
     * amounts may be converted to shares. So it is recommended to keep
     * custom amounts low enough as not to cause overflow when multiplied
     * by `totalSupply`.
     *
     * @param . The address that is depositing into the strategy.
     * @return . The available amount the `_owner` can deposit in terms of `asset`
     */
    function availableDepositLimit(
        address _owner
    ) public view override returns (uint256) {
        // Get the limit from the permissioning layer.
        uint256 permissionedLimit = super.availableDepositLimit(_owner);

        // Get the data configuration bitmap.
        uint256 _data = lendingPool
            .getReserveData(address(asset))
            .configuration
            .data;

        // Cannot deposit when paused or frozen.
        if (_isPaused(_data) || _isFrozen(_data)) return 0;

        uint256 supplyCap = _getSupplyCap(_data);

        // If we have no supply cap, the only limit is the permissioning.
        if (supplyCap == 0) return permissionedLimit;

        // Supply plus any already idle funds.
        uint256 supply = aToken.totalSupply() + asset.balanceOf(address(this));

        // If we already hit the cap, no deposits allowed.
        if (supplyCap <= supply) return 0;

        // The protocol limit is the remaining room in the supply cap.
        uint256 protocolLimit;
        unchecked {
            protocolLimit = supplyCap - supply;
        }

        // The final limit is the minimum of the two.
        return Math.min(permissionedLimit, protocolLimit);
    }

    /**
     * @notice Gets the supply cap of the reserve
     * @return The supply cap
     */
    function getSupplyCap() public view returns (uint256) {
        return
            _getSupplyCap(
                lendingPool.getReserveData(address(asset)).configuration.data
            );
    }

    /**
     * @dev Given the data configuration returns the supply cap.
     */
    function _getSupplyCap(uint256 _data) internal view returns (uint256) {
        // Get out the supply cap for the asset.
        uint256 cap = (_data & ~SUPPLY_CAP_MASK) >>
            SUPPLY_CAP_START_BIT_POSITION;
        // Adjust to the correct decimals.
        return cap * (10 ** decimals);
    }

    /**
     * @dev Paused flag is at the 60th bit
     */
    function _isPaused(uint256 _data) internal pure returns (bool) {
        // Create a mask with only the 60th bit set
        uint256 mask = 1 << 60; // Bitwise left shift by 59 positions

        // Perform bitwise AND operation to check if the 60th bit is 0.
        return (_data & mask) != 0;
    }

    /**
     * @dev Frozen flag is at the 57th bit.
     */
    function _isFrozen(uint256 _data) internal pure returns (bool) {
        // Create a mask with only the 57th bit set
        uint256 mask = 1 << 57; // Bitwise left shift by 56 positions

        // Perform bitwise AND operation to check if the 57th bit 0.
        return (_data & mask) != 0;
    }

    /**
     * @notice Gets the max amount of `asset` that can be withdrawn.
     * @dev Defaults to an unlimited amount for any address. But can
     * be overridden by strategists.
     *
     * This function will be called before any withdraw or redeem to enforce
     * any limits desired by the strategist. This can be used for illiquid
     * or sandwichable strategies. It should never be lower than `totalIdle`.
     *
     *   EX:
     *       return TokenIzedStrategy.totalIdle();
     *
     * This does not need to take into account the `_owner`'s share balance
     * or conversion rates from shares to assets.
     *
     * @param . The address that is withdrawing from the strategy.
     * @return . The available amount that can be withdrawn in terms of `asset`
     */
    function availableWithdrawLimit(
        address /*_owner*/
    ) public view override returns (uint256) {
        uint256 liquidity = aToken.balanceOf(address(this));

        // IF pool is paused
        if (
            _isPaused(
                lendingPool.getReserveData(address(asset)).configuration.data
            )
        ) {
            liquidity = 0;
        }

        return balanceOfAsset() + liquidity;
    }

    /**
     * @notice Set the `minAmountToSellMapping` for a specific `_token`.
     * @dev This can be used by management to adjust wether or not the
     * _claimAndSellRewards() function will attempt to sell a specific
     * reward token. This can be used if liquidity is to low, amounts
     * are to low or any other reason that may cause reverts.
     *
     * @param _token The address of the token to adjust.
     * @param _amount Min required amount to sell.
     */
    function setMinAmountToSellMapping(
        address _token,
        uint256 _amount
    ) external onlyManagement {
        minAmountToSellMapping[_token] = _amount;
    }

    /**
     * @notice Set wether or not the strategy should claim and sell rewards.
     * @param _bool Wether or not rewards should be claimed and sold automatically
     */
    function setClaimRewards(bool _bool) external onlyManagement {
        claimRewards = _bool;
    }

    ///////////// DUTCH AUCTION FUNCTIONS \\\\\\\\\\\\\\\\\\

    function setAuction(address _auction) external onlyManagement {
        if (_auction != address(0)) {
            require(IAuction(_auction).want() == address(asset), "wrong want");
            require(
                IAuction(_auction).receiver() == address(this),
                "wrong receiver"
            );
        }
        auction = _auction;
    }

    /**
     * @notice Set the swap type for a specific token.
     * @param _from The address of the token to set the swap type for.
     * @param _swapType The swap type to set.
     */
    function setSwapType(
        address _from,
        SwapType _swapType
    ) external onlyManagement {
        swapType[_from] = _swapType;
    }

    /**
     * @dev Kick an auction for a given token.
     * @param _from The token that was being sold.
     */
    function _kickAuction(address _from) internal returns (uint256) {
        require(_from != address(asset), "cannot kick");
        require(auction != address(0), "no auction");

        uint256 _balance = ERC20(_from).balanceOf(address(this));
        require(_balance > minAmountToSellMapping[_from], "balance too low");

        ERC20(_from).safeTransfer(auction, _balance);
        return IAuction(auction).kick(_from);
    }

    function kickAuction(
        address _token
    ) external onlyKeepers returns (uint256) {
        require(swapType[_token] == SwapType.AUCTION, "!auction");
        return _kickAuction(_token);
    }

    /**
     * @dev Optional function for a strategist to override that will
     * allow management to manually withdraw deployed funds from the
     * yield source if a strategy is shutdown.
     *
     * This should attempt to free `_amount`, noting that `_amount` may
     * be more than is currently deployed.
     *
     * NOTE: This will not realize any profits or losses. A separate
     * {report} will be needed in order to record any profit/loss. If
     * a report may need to be called after a shutdown it is important
     * to check if the strategy is shutdown during {_harvestAndReport}
     * so that it does not simply re-deploy all funds that had been freed.
     *
     * EX:
     *   if(freeAsset > 0 && !TokenizedStrategy.isShutdown()) {
     *       depositFunds...
     *    }
     *
     * @param _amount The amount of asset to attempt to free.
     */
    function _emergencyWithdraw(uint256 _amount) internal override {
        _freeFunds(_amount);
    }
}
