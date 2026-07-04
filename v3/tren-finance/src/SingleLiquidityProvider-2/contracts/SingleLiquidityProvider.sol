// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import { ERC20, IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import { ISingleLiquidityProvider } from "./Interfaces/ISingleLiquidityProvider.sol";
import { IDebtToken } from "./Interfaces/IDebtToken.sol";
import { IVault } from "./Interfaces/IVault.sol";

/// @title SingleLiquidityProvider
/// @notice This contract provides single side liquidity functionality of adding and removing
/// liquidity in Uniswap pool via Gamma Vault
contract SingleLiquidityProvider is
    ISingleLiquidityProvider,
    Ownable2Step,
    ReentrancyGuard,
    ERC20
{
    using SafeERC20 for IERC20Metadata;
    using EnumerableSet for EnumerableSet.UintSet;

    /// @notice The precision of the accumulated rewards
    uint256 public constant ACCUMULATED_PRECISION = 1e18;

    /// @notice The counter for stake IDs
    uint256 public counter;

    /// @notice The total amount of deposited stable
    uint256 public totalDepositedAmount;
    /// @notice The amount of total allocation
    uint256 public totalAllocation;
    /// @notice The amount of current allocation for epoch (2 weeks)
    uint256 public currentAllocation;
    /// @notice The amount of allocation per second
    uint256 public allocationPerSecond;
    /// @notice The amount of rewards per share
    uint256 public rewardPerShare;
    /// @notice The block number of the last reward
    uint256 public lastRewardBlockNumber;
    /// @notice The timestamp of the last reward
    uint256 public lastUpdatedTimestamp;
    /// @notice The end date of rewards calculation
    uint256 public endDate;

    /// @notice The array of all request ids
    EnumerableSet.UintSet private requestIds;

    /// @notice The address of treasury
    address public immutable treasury;
    /// @notice The address of debt token
    address public immutable debtToken;
    /// @notice The address of stable
    IERC20Metadata public immutable stable;
    /// @notice The address of the Gamma vault
    IVault public immutable vault;
    /// @notice The address of TREN token
    IERC20Metadata public trenToken;

    /// @notice The status of deposit restriction
    bool public depositSuspended;
    /// @notice The status of claim restriction
    bool public claimSuspended;

    /// @notice Mapping from user's address to deposit struct
    mapping(address user => Deposit deposit) private deposits;
    /// @notice Mapping from id to withdraw request struct
    mapping(uint256 id => Request request) private requests;
    /// @notice Mapping from user's address to array of user withdraw request ids
    mapping(address user => EnumerableSet.UintSet requestIds) private userRequestIds;

    // ------------------------------------------ Constructor -------------------------------------

    /**
     * @notice Constructor
     * @param _initialOwner The initial owner of the contract
     * @param _treasury The address of treasury
     * @param _stable The address of stable
     * @param _vault The address of Gamma vault
     * @param _debtToken The address of debt token
     */
    constructor(
        address _initialOwner,
        address _treasury,
        address _stable,
        address _vault,
        address _debtToken
    )
        Ownable(_initialOwner)
        ERC20("SLP Token", "SLP")
    {
        if (
            _treasury == address(0) || _stable == address(0) || _vault == address(0)
                || _debtToken == address(0)
        ) {
            revert NoZeroAddress();
        }
        treasury = _treasury;
        stable = IERC20Metadata(_stable);
        vault = IVault(_vault);
        debtToken = _debtToken;

        emit AddressesSet(_treasury, _stable, _vault, _debtToken);
    }

    // ------------------------------------------ External / Public Owner Functions ---------------

    /**
     * @notice Function to set TREN token address
     * @param _trenToken The address of TREN token
     * @dev Can only be called by the owner
     */
    function setTrenToken(address _trenToken) external onlyOwner {
        if (_trenToken == address(0)) revert NoZeroAddress();

        trenToken = IERC20Metadata(_trenToken);

        trenToken.safeTransferFrom(treasury, address(this), totalAllocation);

        emit TrenTokenSet(_trenToken);
    }

    /**
     * @notice Function to initialize the contract
     * @param allocation The amount of allocation
     * @dev Can only be called by the owner
     */
    function init(uint256 allocation) external onlyOwner {
        _checkZeroAmount(allocation);

        if (block.timestamp > endDate) {
            allocationPerSecond = allocation / 2 weeks;
            if (endDate == 0) {
                lastUpdatedTimestamp = block.timestamp;
            } else {
                lastUpdatedTimestamp = endDate;
            }
            endDate = block.timestamp + 2 weeks;

            totalAllocation += allocation;
            currentAllocation = allocation;

            if (address(trenToken) != address(0)) {
                trenToken.safeTransferFrom(treasury, address(this), allocation);
            }

            emit Initialized(block.timestamp, endDate, allocation, allocationPerSecond);
        } else {
            revert AlreadyInitialized();
        }
    }

    /// @notice Function to emergency withdraw
    /// @dev Can only be called by the owner
    function emergencyWithdraw() external onlyOwner {
        trenToken.safeTransfer(msg.sender, trenToken.balanceOf(address(this)));
    }

    /**
     * @notice Function to switch deposit status between active and suspended
     * @dev Can only be called by the owner
     */
    function switchDepositStatus() external onlyOwner {
        depositSuspended = !depositSuspended;

        emit DepositStatusChanged(depositSuspended);
    }

    /**
     * @notice Function to switch claim status between active and suspended
     * @dev Can only be called by the owner
     */
    function switchClaimStatus() external onlyOwner {
        claimSuspended = !claimSuspended;

        emit ClaimStatusChanged(claimSuspended);
    }

    /**
     * @notice Function to override renounceOwnership
     * @dev Disabled renounceOwnership()
     */
    function renounceOwnership() public view override onlyOwner {
        revert RenounceOwnershipDisabled();
    }

    // ------------------------------------------ External / Public Functions ---------------------

    /// @inheritdoc ISingleLiquidityProvider
    function deposit(uint256 amount) external nonReentrant {
        _checkZeroAmount(amount);
        if (depositSuspended) revert DepositSuspended();

        stable.safeTransferFrom(msg.sender, address(this), amount);

        updateRewardPerShare();

        Deposit storage userDeposit = deposits[msg.sender];
        uint256 correctedAmount = _decimalsCorrection(stable.decimals(), 18, amount);
        userDeposit.depositedAmount += correctedAmount;
        userDeposit.rewardDebt += correctedAmount * rewardPerShare / ACCUMULATED_PRECISION;

        totalDepositedAmount += correctedAmount;

        _mint(msg.sender, correctedAmount);
        userDeposit.shares += _addLiquidity(amount, correctedAmount);

        emit Deposited(msg.sender, correctedAmount);
    }

    /// @inheritdoc ISingleLiquidityProvider
    function withdrawRequest(uint256 amount) external nonReentrant {
        _checkZeroAmount(amount);
        Deposit storage userDeposit = deposits[msg.sender];
        uint256 correctedAmount = _decimalsCorrection(stable.decimals(), 18, amount);
        if (correctedAmount > userDeposit.depositedAmount) revert AmountOutsideOfDeposit();

        updateRewardPerShare();

        uint256 accumulatedReward =
            (userDeposit.depositedAmount * rewardPerShare) / ACCUMULATED_PRECISION;
        uint256 _pendingRewards = accumulatedReward - userDeposit.rewardDebt;
        userDeposit.pendingRewards += _pendingRewards;

        uint256 withdrawnRewardDebt = (correctedAmount * rewardPerShare) / ACCUMULATED_PRECISION;
        userDeposit.rewardDebt = accumulatedReward - withdrawnRewardDebt;

        userDeposit.depositedAmount -= correctedAmount;
        userDeposit.amountToWithdraw += correctedAmount;

        totalDepositedAmount -= correctedAmount;

        uint256 requestId = ++counter;
        userRequestIds[msg.sender].add(requestId);
        requestIds.add(requestId);

        requests[requestId] = Request({
            amountToWithdraw: correctedAmount,
            unlockTimestamp: block.timestamp + 2 weeks
        });

        emit Requested(msg.sender, requestId, amount);
    }

    /// @inheritdoc ISingleLiquidityProvider
    function withdraw(uint256 requestId) external nonReentrant {
        if (!userRequestIds[msg.sender].contains(requestId)) {
            revert IdNotBelongsToUser();
        }

        Request memory withdrawReq = requests[requestId];

        uint256 _amountToWithdraw = withdrawReq.amountToWithdraw;
        if (balanceOf(msg.sender) < _amountToWithdraw) revert InsufficientBalance();
        if (block.timestamp < withdrawReq.unlockTimestamp) revert LockedTimeNotPassed();

        Deposit storage userDeposit = deposits[msg.sender];
        userDeposit.amountToWithdraw -= _amountToWithdraw;

        uint256 sharesNeeded;
        uint256 sharesWithCorrectDec = _amountToWithdraw / 10 ** (18 - stable.decimals());
        if (sharesWithCorrectDec * 2 >= userDeposit.shares) {
            sharesNeeded = userDeposit.shares;
            userDeposit.shares = 0;
        } else {
            sharesNeeded = sharesWithCorrectDec * 2;
            userDeposit.shares -= sharesNeeded;
        }
        _burn(msg.sender, _amountToWithdraw);
        _removeLiquidity(_amountToWithdraw, sharesNeeded);

        _checkDepositRemoval(userDeposit);

        delete requests[requestId];
        userRequestIds[msg.sender].remove(requestId);
        requestIds.remove(requestId);

        emit Withdrawn(msg.sender, requestId, _amountToWithdraw);
    }

    /// @inheritdoc ISingleLiquidityProvider
    function claimRewards() external nonReentrant {
        if (claimSuspended) revert ClaimSuspended();

        updateRewardPerShare();

        Deposit storage userDeposit = deposits[msg.sender];
        uint256 accumulatedReward =
            (userDeposit.depositedAmount * rewardPerShare) / ACCUMULATED_PRECISION;
        uint256 _pendingRewards =
            userDeposit.pendingRewards + accumulatedReward - userDeposit.rewardDebt;

        userDeposit.rewardDebt = accumulatedReward;
        if (userDeposit.pendingRewards != 0) {
            userDeposit.pendingRewards = 0;
        }

        if (_pendingRewards != 0) {
            trenToken.safeTransfer(msg.sender, _pendingRewards);
        }

        _checkDepositRemoval(userDeposit);

        emit ClaimRewards(msg.sender, _pendingRewards);
    }

    /// @notice Function to update rewards per share
    function updateRewardPerShare() public {
        if (block.number > lastRewardBlockNumber && totalDepositedAmount > 0) {
            uint256 timePassed = 0;
            if (block.timestamp < endDate) {
                timePassed = block.timestamp - lastUpdatedTimestamp;
                lastUpdatedTimestamp = block.timestamp;
            } else {
                timePassed = endDate - lastUpdatedTimestamp;
                lastUpdatedTimestamp = endDate;
            }

            uint256 tokensAccum = timePassed * allocationPerSecond;
            rewardPerShare += (tokensAccum * ACCUMULATED_PRECISION) / totalDepositedAmount;

            lastRewardBlockNumber = block.number;

            emit UpdatedRewardsPerShare(lastUpdatedTimestamp, totalDepositedAmount, rewardPerShare);
        }
    }

    // ------------------------------------------ External / Public view functions ----------------

    /**
     * @notice Returns deposit struct for a specific address
     * @param user The addrees of user
     */
    function getDepositData(address user) external view returns (Deposit memory) {
        return deposits[user];
    }

    /**
     * @notice Returns unstake request struct for a specific id
     * @param requestId The id of request
     */
    function getRequestData(uint256 requestId) external view returns (Request memory) {
        return requests[requestId];
    }

    /**
     * @notice Returns all request ids for a specific user
     * @param user The address of user
     */
    function getUserRequestIds(address user) external view returns (uint256[] memory) {
        return userRequestIds[user].values();
    }

    /// @notice Returns all request ids
    function getRequestIds() external view returns (uint256[] memory) {
        return requestIds.values();
    }

    /// @notice Returns pending rewards for specific user
    /// @param user The address of user
    function getPendingRewards(address user) public view returns (uint256 reward) {
        if (totalDepositedAmount > 0) {
            uint256 timePassed = 0;
            if (block.timestamp < endDate) {
                timePassed = block.timestamp - lastUpdatedTimestamp;
            } else {
                timePassed = endDate - lastUpdatedTimestamp;
            }
            uint256 tokensAccum = timePassed * allocationPerSecond;
            uint256 rewardPerShare_ =
                rewardPerShare + ((tokensAccum * ACCUMULATED_PRECISION) / totalDepositedAmount);

            Deposit storage userDeposit = deposits[user];
            uint256 accumulatedReward =
                (userDeposit.depositedAmount * rewardPerShare_) / ACCUMULATED_PRECISION;

            return userDeposit.pendingRewards + accumulatedReward - userDeposit.rewardDebt;
        }
    }

    // ------------------------------------------ Private functions -------------------------------

    /**
     * @dev Adds liquidity to Gamma Vault and minting appropriate amount of Vault Tokens
     * @param stableAmount The amount of stable tokens to be provided
     * @param debtAmount The amount of debt tokens to be provided
     * @return shares The amount of minted Vault tokens
     */
    function _addLiquidity(uint256 stableAmount, uint256 debtAmount) private returns (uint256) {
        stable.safeIncreaseAllowance(address(vault), stableAmount);
        IDebtToken(debtToken).mintFromWhitelistedContract(debtAmount);
        IERC20Metadata(debtToken).safeIncreaseAllowance(address(vault), debtAmount);
        return vault.deposit(
            debtAmount,
            stableAmount,
            address(this),
            address(this),
            [uint256(0), uint256(0), uint256(0), uint256(0)]
        );
    }

    /**
     * @dev Removes liquidity from Gamma Vault and burning appropriate amount of Vault Tokens
     * @param amount The amount of tokens to be removed from Vault
     * @param shares The amount of Vault tokens to be burned
     */
    function _removeLiquidity(uint256 amount, uint256 shares) private {
        uint256 stableAmount = _decimalsCorrection(18, stable.decimals(), amount);
        (, uint256 amount1Out) = vault.withdraw(
            shares, address(this), address(this), [uint256(0), uint256(0), uint256(0), uint256(0)]
        );
        uint256 diff;
        uint256 sendStable = stableAmount;
        if (stableAmount > amount1Out) {
            diff = stableAmount - amount1Out;
            uint256 correctedDiff = _decimalsCorrection(stable.decimals(), 18, diff);
            IERC20Metadata(debtToken).safeTransfer(msg.sender, correctedDiff);
            sendStable = amount1Out;
        } else if (stableAmount < amount1Out) {
            diff = amount1Out - stableAmount;
            stableAmount -= diff;
            stable.safeTransfer(treasury, diff);
        }
        IDebtToken(debtToken).burnFromWhitelistedContract(
            IERC20Metadata(debtToken).balanceOf(address(this))
        );
        stable.safeTransfer(msg.sender, sendStable);
    }

    /**
     * @dev Function to check investment removal
     * @param userDeposit The deposit struct
     */
    function _checkDepositRemoval(Deposit memory userDeposit) private {
        if (
            userDeposit.depositedAmount == 0 && userDeposit.amountToWithdraw == 0
                && userDeposit.rewardDebt == 0 && userDeposit.pendingRewards == 0
        ) {
            delete deposits[msg.sender];
            emit DepositRemoved(msg.sender);
        }
    }

    // ------------------------------------------ Private pure functions --------------------------

    /**
     * @dev Function to check zero amount
     * @param amount The amount to be checked
     */
    function _checkZeroAmount(uint256 amount) private pure {
        if (amount == 0) revert NoZeroAmount();
    }

    function _decimalsCorrection(
        uint8 decimalsIn,
        uint8 decimalsOut,
        uint256 amountIn
    )
        private
        pure
        returns (uint256 amountOut)
    {
        if (decimalsIn < decimalsOut) {
            uint256 decDiff;
            unchecked {
                decDiff = uint256(decimalsOut) - uint256(decimalsIn);
            }
            amountOut = amountIn * (10 ** decDiff);
        } else if (decimalsIn > decimalsOut) {
            uint256 decDiff;
            unchecked {
                decDiff = uint256(decimalsIn) - uint256(decimalsOut);
            }
            amountOut = amountIn / (10 ** decDiff);
        } else {
            amountOut = amountIn;
        }
    }
}
