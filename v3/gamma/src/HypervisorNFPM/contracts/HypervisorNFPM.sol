// SPDX-License-Identifier: BUSL-1.1

pragma solidity =0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import "@cryptoalgebra/integral-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@cryptoalgebra/integral-farming/contracts/interfaces/IFarmingCenter.sol";
import "./interfaces/IIncentiveMaker.sol";
import "./interfaces/IHypervisorState.sol";
import "./interfaces/IMultiFeeDistribution.sol";

import "./libraries/PositionManagementLibrary.sol";
import "./libraries/PositionValue.sol";

import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "@cryptoalgebra/integral-core/contracts/libraries/TickMath.sol";

/// @title Hypervisor 1.3.1
/// @notice A Uniswap V2-like interface with fungible liquidity 
/// which allows for arbitrary liquidity provision: one-sided, lop-sided, and balanced
contract HypervisorNFPM is IHypervisorState, Ownable, Pausable, ERC20Permit, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using PositionManagementLibrary for INonfungiblePositionManager;

    IAlgebraPool public pool;
    INonfungiblePositionManager public nonfungiblePositionManager;
    IFarmingCenter public farmingCenter;
    IIncentiveMaker public incentiveMaker;
    IMultiFeeDistribution public receiver;
    IncentiveKey public currentIncentiveKey;

    IERC20 public token0;
    IERC20 public token1;
    IERC20 public rewardToken;
    IERC20 public bonusRewardToken;

    uint8 public fee = 15;
    int24 public tickSpacing;

    int24 public baseLower;
    int24 public baseUpper;
    int24 public limitLower;
    int24 public limitUpper;

    uint256 public baseNftId;
    uint256 public limitNftId;

    address public whitelistedAddress;
    address public feeRecipient;
    bool public directDeposit;

    uint256 public constant PRECISION = 1e36;

    constructor(
        address _pool,
        address _nonfungiblePositionManager,  
        address _incentiveMaker,  
        address _receiver, 
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) ERC20Permit(name) {
        require(
            _pool != address(0) &&
            _nonfungiblePositionManager != address(0) &&
            _receiver != address(0)
        );

        // Initialize core contracts
        pool = IAlgebraPool(_pool);
        nonfungiblePositionManager = INonfungiblePositionManager(_nonfungiblePositionManager);
        farmingCenter = IFarmingCenter(nonfungiblePositionManager.farmingCenter());
        incentiveMaker = IIncentiveMaker(_incentiveMaker);
        receiver = IMultiFeeDistribution(_receiver);

        // Set initial incentive maker and reward tokens
        if (_incentiveMaker != address(0)) {
            incentiveMaker = IIncentiveMaker(_incentiveMaker);
            currentIncentiveKey = incentiveMaker.poolToKey(_pool);
            rewardToken = IERC20(address(currentIncentiveKey.rewardToken));
            bonusRewardToken = IERC20(address(currentIncentiveKey.bonusRewardToken));
        }

        // Cache pool values in single external calls
        address token0Addr = pool.token0();
        address token1Addr = pool.token1();
        tickSpacing = pool.tickSpacing();
        require(token0Addr != address(0) && token1Addr != address(0));

        token0 = IERC20(token0Addr);
        token1 = IERC20(token1Addr);

        // Set initial values
        fee = 1;

        // Approve token spending
        token0.safeApprove(address(nonfungiblePositionManager), type(uint256).max);
        token1.safeApprove(address(nonfungiblePositionManager), type(uint256).max);

    }

    /// @notice Deposit tokens
    /// @param deposit0 Amount of token0 transfered from sender to Hypervisor
    /// @param deposit1 Amount of token1 transfered from sender to Hypervisor
    /// @param to Address to which liquidity tokens are minted
    /// @param from Address from which asset tokens are transferred
    /// @param inMin min spend for directDeposit is true 
    /// @return shares Quantity of liquidity tokens minted as a result of deposit
    function deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to,
        address from,
        uint256[4] memory inMin
    ) nonReentrant whenNotPaused external returns (uint256 shares) {
        return _deposit(deposit0, deposit1, to, from, inMin);
    }

    /// @notice Deposits tokens into the hypervisor and automatically stakes the resulting LP tokens
    /// @dev First calls _deposit to mint LP tokens, then approves and stakes them in the receiver contract
    /// @param deposit0 Amount of token0 to deposit
    /// @param deposit1 Amount of token1 to deposit  
    /// @param to Address that will receive the staked position
    /// @param from Address from which deposit tokens are transferred
    /// @param inMin Array of minimum amounts: [base0Min, base1Min, limit0Min, limit1Min]
    /// @return shares The quantity of liquidity tokens minted and staked
    function depositAndStake(
        uint256 deposit0,
        uint256 deposit1,
        address to,
        address from,
        uint256[4] memory inMin
    ) nonReentrant whenNotPaused external returns (uint256 shares) {
        // First deposit to get LP tokens
        shares = _deposit(deposit0, deposit1, address(this), from, inMin);
        
        // Approve only the exact amount needed
        IERC20(address(this)).safeApprove(address(receiver), 0);
        IERC20(address(this)).safeApprove(address(receiver), shares);       
        // Stake the shares in the receiver
        receiver.stake(shares, to);
        
        return shares;
    }
    
    function _deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to,
        address from,
        uint256[4] memory inMin
    ) internal returns (uint256 shares) {
        require(deposit0 > 0 || deposit1 > 0);
        require(to != address(0));
        if (msg.sender != whitelistedAddress) revert NotWhitelisted();

        /// update fees
        _zeroBurn();

        /// update rewards
        if (baseNftId != 0) _collectAndClaim(baseNftId);
        if (limitNftId != 0) _collectAndClaim(limitNftId);


        (uint160 sqrtPrice, , , , , ,) = pool.safelyGetStateOfAMM();

        uint256 price = FullMath.mulDiv(uint256(sqrtPrice) * 1e18, uint256(sqrtPrice) * 1e18, 2**(96 * 2));

        (uint256 pool0, uint256 pool1) = getTotalAmounts();

        shares = deposit1 + FullMath.mulDiv(deposit0, price, PRECISION);

        if (deposit0 > 0) {
            token0.safeTransferFrom(from, address(this), deposit0);
        }
        if (deposit1 > 0) {
            token1.safeTransferFrom(from, address(this), deposit1);
        }

        uint256 total = totalSupply();
        if (total != 0) {
            uint256 pool0PricedInToken1 = FullMath.mulDiv(pool0, price, PRECISION);
            shares = FullMath.mulDiv(shares, total, (pool0PricedInToken1 + pool1));
            
            require(shares > 0);

            if (directDeposit) {
                PositionManagementLibrary.DirectDepositParams memory params = PositionManagementLibrary.DirectDepositParams({
                    pool: pool,
                    baseNftId: baseNftId,
                    limitNftId: limitNftId,
                    baseLower: baseLower,
                    baseUpper: baseUpper,
                    limitLower: limitLower,
                    limitUpper: limitUpper,
                    deposit0: deposit0,
                    deposit1: deposit1,
                    minAmounts: inMin
                });
                
                nonfungiblePositionManager.computeAndDirectDeposit(params);
            }          
        }
        _mint(to, shares);

        emit Deposit(from, to, shares, deposit0, deposit1);
    }
    
    /// @notice External function to collect and distribute fees from active NFT positions
    /// @dev Can only be called by whitelisted address
    /// @return owed0 Total amount of token0 fees collected from both positions
    /// @return owed1 Total amount of token1 fees collected from both positions  
    function zeroBurn() external returns(uint256 owed0, uint256 owed1) {
        require(msg.sender == whitelistedAddress);
        return _zeroBurn();
    }

    /// @notice Collects and distributes fees from active NFT positions
    /// @dev Called internally to collect fees
    /// @return owed0 Total amount of token0 fees collected from both positions
    /// @return owed1 Total amount of token1 fees collected from both positions
    function _zeroBurn() internal returns(uint256 owed0, uint256 owed1) {
        if (baseNftId != 0) {
            (uint256 collected0, uint256 collected1) = nonfungiblePositionManager.collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: baseNftId,
                    recipient: address(this), 
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
            owed0 += collected0;
            owed1 += collected1;
        }

        if (limitNftId != 0) {
            (uint256 collected0, uint256 collected1) = nonfungiblePositionManager.collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: limitNftId,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
            owed0 += collected0;
            owed1 += collected1;
        }
        
        emit ZeroBurn(fee, owed0, owed1);

        uint256 feeAmount0 = owed0 / fee;
        uint256 feeAmount1 = owed1 / fee;
        if (feeAmount0 > 0) token0.safeTransfer(feeRecipient, feeAmount0);
        if (feeAmount1 > 0) token1.safeTransfer(feeRecipient, feeAmount1);

        return (owed0, owed1);
    }

    /// @param shares Number of liquidity tokens to redeem as pool assets
    /// @param to Address to which redeemed pool assets are sent
    /// @param from Address from which liquidity tokens are sent
    /// @param minAmounts min amount0,1 returned for shares of liq 
    /// @return amount0 Amount of token0 redeemed by the submitted liquidity tokens
    /// @return amount1 Amount of token1 redeemed by the submitted liquidity tokens
    function withdraw(
        uint256 shares,
        address to,
        address from,
        uint256[4] memory minAmounts
        ) nonReentrant whenNotPaused external returns (uint256 amount0, uint256 amount1) {
        require(shares > 0);
        require(to != address(0));
        require(from == msg.sender);

        /// update fees
        _zeroBurn();

        /// update rewards
        if (baseNftId != 0) _collectAndClaim(baseNftId);
        if (limitNftId != 0) _collectAndClaim(limitNftId);

        (uint256 base0, uint256 base1, uint256 limit0, uint256 limit1) = 
            nonfungiblePositionManager.withdrawPositions(
                baseNftId,
                limitNftId,
                shares,
                to,
                totalSupply(),
                minAmounts
            );

        // Push tokens proportional to unused balances
        uint256 unusedAmount0 = FullMath.mulDiv(token0.balanceOf(address(this)), shares, totalSupply());
        uint256 unusedAmount1 = FullMath.mulDiv(token1.balanceOf(address(this)), shares, totalSupply());
        if (unusedAmount0 > 0) token0.safeTransfer(to, unusedAmount0);
        if (unusedAmount1 > 0) token1.safeTransfer(to, unusedAmount1);

        amount0 = base0 + limit0 + unusedAmount0;
        amount1 = base1 + limit1 + unusedAmount1;

        _burn(from, shares);

        emit Withdraw(from, to, shares, amount0, amount1);
    }

    /// @param _baseLower The lower tick of the base position
    /// @param _baseUpper The upper tick of the base position
    /// @param _limitLower The lower tick of the limit position
    /// @param _limitUpper The upper tick of the limit position
    /// @param  inMin min spend 
    /// @param  outMin min amount0,1 returned for shares of liq 
    /// @param _feeRecipient Address of recipient of % of fees since last rebalance
    function rebalance(
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        address _feeRecipient,
        uint256[4] memory inMin, 
        uint256[4] memory outMin
        ) nonReentrant external onlyOwner {
        require(
            _baseLower < _baseUpper &&
            _baseLower % tickSpacing == 0 &&
            _baseUpper % tickSpacing == 0 &&
            _limitLower < _limitUpper &&
            _limitLower % tickSpacing == 0 &&
            _limitUpper % tickSpacing == 0 &&
            (_limitUpper != _baseUpper || _limitLower != _baseLower) &&
            _feeRecipient != address(0)
        );
        feeRecipient = _feeRecipient;

        /// update fees
        (uint256 owed0, uint256 owed1) = _zeroBurn();

        /// update rewards
        if (baseNftId != 0) _collectAndClaim(baseNftId);
        if (limitNftId != 0) _collectAndClaim(limitNftId);

        /// Burn existing positions if they exist
        if (baseNftId != 0) {
            (uint128 baseLiquidity, , ) = PositionValue.position(nonfungiblePositionManager, baseNftId);
            nonfungiblePositionManager.decreaseLiquidity(baseNftId, address(this), baseLiquidity, outMin[0], outMin[1]);
        }
        
        if (limitNftId != 0) {
            (uint128 limitLiquidity, , ) = PositionValue.position(nonfungiblePositionManager, limitNftId);
            nonfungiblePositionManager.decreaseLiquidity(limitNftId, address(this), limitLiquidity, outMin[2], outMin[3]);
        }


        emit Rebalance(
            currentTick(),
            token0.balanceOf(address(this)),
            token1.balanceOf(address(this)),
            owed0,
            owed1,
            totalSupply()
        );

        baseLower = _baseLower;
        baseUpper = _baseUpper;

        baseNftId = nonfungiblePositionManager.computeAndMintLiquidity(
            pool,
            baseLower,
            baseUpper,
            token0.balanceOf(address(this)),
            token1.balanceOf(address(this)),
            inMin[0],
            inMin[1],
            address(this)
        );
        if (baseNftId != 0 && address(currentIncentiveKey.pool) != address(0)) {
            _approveAndEnterFarming(baseNftId);
        }

        limitLower = _limitLower;
        limitUpper = _limitUpper;

        limitNftId = nonfungiblePositionManager.computeAndMintLiquidity(
            pool,
            limitLower,
            limitUpper,
            token0.balanceOf(address(this)),
            token1.balanceOf(address(this)),
            inMin[2],
            inMin[3],
            address(this)
        );
        if (limitNftId != 0 && address(currentIncentiveKey.pool) != address(0)) {
            _approveAndEnterFarming(limitNftId);
        }
    }

    /// @notice Compound pending fees and unused deposits
    /// @param inMin min spend 
    function compound(uint256[4] memory inMin) external nonReentrant onlyOwner {
        // update fees for compounding
        _zeroBurn();

        /// update rewards
        if (baseNftId != 0) _collectAndClaim(baseNftId);
        if (limitNftId != 0) _collectAndClaim(limitNftId);

        // Check baseNft and potential liquidity
        if (baseNftId != 0) {
            nonfungiblePositionManager.computeAndIncreaseLiquidity(
                pool,
                baseNftId,
                baseLower,
                baseUpper,
                token0.balanceOf(address(this)),
                token1.balanceOf(address(this)),
                inMin[0],
                inMin[1]
            );
        }

        // Check limitNft and potential liquidity only if limitNft exists
        if (limitNftId != 0) {
            nonfungiblePositionManager.computeAndIncreaseLiquidity(
                pool,
                limitNftId,
                limitLower,
                limitUpper,
                token0.balanceOf(address(this)),
                token1.balanceOf(address(this)),    
                inMin[2],
                inMin[3]
            );
        }
    }

    /// @return total0 Quantity of token0 in both positions and unused in the Hypervisor
    /// @return total1 Quantity of token1 in both positions and unused in the Hypervisor
    function getTotalAmounts() public view returns (uint256 total0, uint256 total1) {
        (, uint256 base0, uint256 base1) = getBasePosition();
        (, uint256 limit0, uint256 limit1) = getLimitPosition();
        
        total0 = token0.balanceOf(address(this)) + base0 + limit0;
        total1 = token1.balanceOf(address(this)) + base1 + limit1;
    }

    /// @return total0 Quantity of token0 in both positions and unused in the Hypervisor including unclaimed fees
    /// @return total1 Quantity of token1 in both positions and unused in the Hypervisor including unclaimed fees
    function getTotalAmountsPlusFees() public view returns (uint256 total0, uint256 total1) {
        // Get base amounts first
        (total0, total1) = getTotalAmounts();
        
        // Calculate unclaimed fees
        uint256 baseFee0 = 0;
        uint256 baseFee1 = 0;
        uint256 limitFee0 = 0;
        uint256 limitFee1 = 0;

        if (baseNftId != 0) {
            (baseFee0, baseFee1) = PositionValue.calculatePositionFee(
                nonfungiblePositionManager, 
                pool, 
                baseNftId
            );
        }

        if (limitNftId != 0) {
            (limitFee0, limitFee1) = PositionValue.calculatePositionFee(
                nonfungiblePositionManager, 
                pool, 
                limitNftId
            );
        }
        
        uint256 fees0 = baseFee0 + limitFee0;
        uint256 fees1 = baseFee1 + limitFee1;

        // Subtract the portion that would be taken by _zeroBurn
        // In _zeroBurn, the fee portion is calculated as owed/fee
        fees0 = fees0 - (fees0 / fee);
        fees1 = fees1 - (fees1 / fee);
        
        // Add fees to total amounts
        total0 = total0 + fees0;
        total1 = total1 + fees1;
    }
    
    /// @return liquidity Amount of total liquidity in the base position
    /// @return amount0 Estimated amount of token0 that could be collected by
    /// burning the base position
    /// @return amount1 Estimated amount of token1 that could be collected by
    function getBasePosition() public view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (baseNftId == 0) {
            return (0, 0, 0);
        }
        
        (liquidity, , ) = PositionValue.position(nonfungiblePositionManager, baseNftId);
        (amount0, amount1) = PositionValue.amountsForLiquidity(pool, baseLower, baseUpper, liquidity);
    }

    function getLimitPosition() public view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (limitNftId == 0) {
            return (0, 0, 0);
        }
        
        (liquidity, , ) = PositionValue.position(nonfungiblePositionManager, limitNftId);
        (amount0, amount1) = PositionValue.amountsForLiquidity(pool, limitLower, limitUpper, liquidity);
    }


    /// @notice Internal function to approve NFT for farming and enter farming position
    /// @param tokenId The ID of the NFT position to enter into farming
    function _approveAndEnterFarming(uint256 tokenId) internal {

        // Early return if pool address is zero
        if (address(currentIncentiveKey.pool) == address(0)) {
            return;
        }

        // Get the key from incentive maker
        IncentiveKey memory key = incentiveMaker.poolToKey(address(pool));

        // Check if there's an existing deposit and if its incentive is deactivated
        bytes32 incentiveId = keccak256(abi.encode(key));

        if (incentiveId != bytes32(0) && farmingCenter.eternalFarming().isIncentiveDeactivated(incentiveId) ) {
            return;
        }
        if (farmingCenter.eternalFarming().isEmergencyWithdrawActivated()) {
            return;
        }
        if (
            address(key.rewardToken) != address(currentIncentiveKey.rewardToken) ||
            address(key.bonusRewardToken) != address(currentIncentiveKey.bonusRewardToken) ||
            address(key.pool) != address(currentIncentiveKey.pool) ||
            key.nonce != currentIncentiveKey.nonce) {
                currentIncentiveKey = key;
            }

        // Get position information to check width
        (,,,,int24 tickLower,int24 tickUpper,,,,,) = nonfungiblePositionManager.positions(tokenId);
        
        // Get incentive parameters
        (,,, uint24 minimalPositionWidth,,) = farmingCenter.eternalFarming().incentives(incentiveId);
        
        // Check if position width is sufficient
        if (int256(tickUpper) - int256(tickLower) < int256(uint256(minimalPositionWidth))) {
            return;
        }

        nonfungiblePositionManager.approveForFarming(
            tokenId, 
            true, 
            address(farmingCenter)
        );
        
        farmingCenter.enterFarming(key, tokenId);
    }

    modifier onlyReceiver() {
        require(msg.sender == address(receiver));
        _;
    }

    /// @notice Collects farming rewards from both base and limit positions
    /// @dev Can only be called by the receiver contract. Processes rewards from both NFT positions if they exist
    /// @dev Internally calls _collectAndClaim which handles reward collection and transfer to the receiver
    function getReward() external onlyReceiver {
        if (baseNftId != 0) _collectAndClaim(baseNftId);
        if (limitNftId != 0) _collectAndClaim(limitNftId);
    }

    /// @notice Collects and claims farming rewards for a specific NFT position
    /// @dev Using 0 as amount in claimReward means claim maximum available
    /// @param tokenId The ID of the NFT position to collect rewards from
    function _collectAndClaim(uint256 tokenId) internal {
        if (tokenId == 0) return;

        // Collect rewards
        IncentiveKey memory key = _getKeyForToken(tokenId);

        // Check if we have a valid key first
        if (address(key.pool) == address(0)) {
            return;
        }

        bytes32 incentiveId = keccak256(abi.encode(key));

        (uint128 totalReward,,,,,) = farmingCenter.eternalFarming().incentives(incentiveId);
        if (totalReward == 0) return;

        farmingCenter.collectRewards(key, tokenId);

        uint256 reward = farmingCenter.claimReward(key.rewardToken, address(receiver), 0);
        
        uint256 bonusReward = farmingCenter.claimReward(key.bonusRewardToken, address(receiver), 0);


        emit RewardsCollected(
            tokenId,
            reward,
            bonusReward
        );

    }

    /// @notice Retrieves farming incentive key for a given NFT position
    /// @dev Internal function to fetch incentive parameters from farming center 
    /// @dev First gets the incentiveId from deposits mapping, then retrieves full incentive details
    /// @param tokenId The ID of the NFT position to get the incentive key for
    /// @return IncentiveKey struct containing reward tokens, pool address and nonce for the position
    function _getKeyForToken(uint256 tokenId) internal view returns (IncentiveKey memory) {
        bytes32 incentiveId = farmingCenter.deposits(tokenId);
        
        (
            IERC20Minimal rewardToken,
            IERC20Minimal bonusRewardToken,
            IAlgebraPool pool,
            uint256 nonce
        ) = farmingCenter.incentiveKeys(incentiveId);
        
        return IncentiveKey({
            rewardToken: rewardToken,
            bonusRewardToken: bonusRewardToken,
            pool: pool,
            nonce: nonce
        });
    }
    

    /// @return tick  pool's current price tick
    function currentTick() public view returns (int24 tick) {
        (, tick, , , , ,) = pool.safelyGetStateOfAMM();
    }

    /// @param _address Array of addresses to be appended
    function setWhitelist(address _address) external onlyOwner {
        whitelistedAddress = _address;
    }

    /// @notice set fee 
    function setFee(uint8 newFee) external onlyOwner {
        require(newFee > 0);
        fee = newFee;

    }

    /// @notice set tickSpacing if updated by FactoryOwner 
    function setTickSpacing(int24 newTickSpacing) external onlyOwner {
        tickSpacing = newTickSpacing;
    } 
    /// @notice Toggle Direct Deposit
    function toggleDirectDeposit() external onlyOwner {
        directDeposit = !directDeposit;
    }

    /// @notice Update protocol addresses
    /// @param _pool New pool address
    /// @param _nonfungiblePositionManager New nonfungible position manager address
    /// @param _farmingCenter New farming center address
    function setProtocolAddresses(
        address _pool,
        address _nonfungiblePositionManager,
        address _farmingCenter
    ) external onlyOwner {
        require(
            _pool != address(0) && 
            _nonfungiblePositionManager != address(0) && 
            _farmingCenter != address(0)
        );
        pool = IAlgebraPool(_pool);
        nonfungiblePositionManager = INonfungiblePositionManager(_nonfungiblePositionManager);
        farmingCenter = IFarmingCenter(_farmingCenter);
    }

    /// @notice Update incentive maker and handle reward token changes
    /// @param _incentiveMaker New incentive maker address
    function updateIncentiveMaker(address _incentiveMaker) external onlyOwner {
        // Update incentive maker and get new key
        incentiveMaker = IIncentiveMaker(_incentiveMaker);
        IncentiveKey memory newKey = incentiveMaker.poolToKey(address(pool));
        
        // Update tokens and key
        rewardToken = IERC20(address(newKey.rewardToken));
        bonusRewardToken = IERC20(address(newKey.bonusRewardToken));
        currentIncentiveKey = newKey;
        
        emit IncentiveKeyUpdated(
            address(newKey.rewardToken),
            address(newKey.bonusRewardToken),
            address(newKey.pool),
            newKey.nonce
        );
    }

    // Instead of separate functions for each NFT ID
    function setNftIds(uint256 _baseNftId, uint256 _limitNftId) external onlyOwner {
        baseNftId = _baseNftId;
        limitNftId = _limitNftId;
    }  
    
    /// @notice External function to decrease liquidity for a given position, only callable by owner. Normally never called.
    /// @param tokenId The ID of the token for which liquidity is being decreased
    /// @param liquidity The amount of liquidity to decrease
    /// @param amount0Min The minimum amount of token0 that should be received
    /// @param amount1Min The minimum amount of token1 that should be received
    /// @return amount0 The amount of token0 removed
    /// @return amount1 The amount of token1 removed
    function decreaseLiquidity(
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Min,
        uint256 amount1Min
    ) external nonReentrant onlyOwner returns (uint256 amount0, uint256 amount1) {
        
        return nonfungiblePositionManager.decreaseLiquidity(
            tokenId,
            address(this),
            liquidity,
            amount0Min,
            amount1Min
        );
    }

    /// @notice External function to add liquidity for a given position, only callable by owner.  Normally never called.
    /// @param tickLower The lower tick of the position in which to add liquidity
    /// @param tickUpper The upper tick of the position in which to add liquidity
    /// @param amount0Desired The desired amount of token0 to add as liquidity
    /// @param amount1Desired The desired amount of token1 to add as liquidity
    /// @param recipient Recipient address for the position
    /// @param amount0Min Minimum amount of token0 that should be paid
    /// @param amount1Min Minimum amount of token1 that should be paid
    /// @return tokenId The ID of the newly minted position
    function mintLiquidity(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        address recipient,
        uint256 amount0Min,
        uint256 amount1Min
    ) external nonReentrant onlyOwner returns (uint256 tokenId) {
        tokenId = nonfungiblePositionManager.mintLiquidity(
            address(token0),
            address(token1),
            tickLower,
            tickUpper,
            amount0Desired,
            amount1Desired,
            recipient,
            amount0Min,
            amount1Min
        );
        
        if (tokenId != 0 && address(currentIncentiveKey.pool) != address(0)) {
            _approveAndEnterFarming(tokenId);
        }
        
        return tokenId;
    }

    function transferReceiver(address newReceiver) external onlyOwner {
        receiver = IMultiFeeDistribution(newReceiver);
    }

    /// @notice Emergency pause of critical contract functions
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause the contract
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Admin-only function to claim any available rewards directly
    /// @param rewardToken The reward token to claim
    /// @param amount Amount to claim (0 for max available)
    function emergencyClaimReward(IERC20Minimal rewardToken, uint256 amount) external onlyOwner {
        farmingCenter.claimReward(rewardToken, address(receiver), amount);
    }



}