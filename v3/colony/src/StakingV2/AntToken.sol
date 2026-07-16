// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "./ERC20Upgradeable.sol";
import "./OwnableUpgradeable.sol";
import "./ReentrancyGuardUpgradeable.sol";
import "./draft-ERC20PermitUpgradeable.sol";
import "./SafeERC20Upgradeable.sol";
import "./Initializable.sol";
import "./PrivilegedGroupUpgradeable.sol";
import "./StakingV2.sol";

/**
 * AntToken
 * ERC20 Token linked and complementary to RewardingStaking
 */
contract AntToken is ERC20Upgradeable, ERC20PermitUpgradeable, PrivilegedGroupUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    struct SpenderCollateral {
        uint256 penaltyMantissa; // saved for this collateral penalty mantissa
        uint256 collateralAmount; // actual collateral amount
    }

    /* ========== STATE VARIABLES ========== */

    // collateral distribution penalty as 1e18 mantissa, which can be applied by collateral receiver, default 50%
    uint256 public penaltyRedistributionShareMantissa;

    // tokens balances reserved for collateral
    mapping(address => mapping(address => SpenderCollateral)) private collateral;

    // total collateral which was set for given account
    mapping(address => uint256) public totalCollateral;

    // Time in seconds used when notifying staking contract with tokens distribution, possible to be changed by owner
    uint256 public penaltyRedistributionPeriod;

    // Rewarding staking contract linked to this token
    StakingV2 public stakingContract;

    /* ========== EVENTS ========== */

    event CollateralSet(address indexed account, address indexed receiver, uint256 amount, uint256 penaltyRedistributionPeriod);
    event CollateralReleased(address indexed account, address indexed receiver, uint256 amount);
    event CollateralDistributed(address indexed account, address indexed distributor, uint256 amount);

    /* ========== CONSTRUCTOR ========== */

    /**
     * @param penaltyRedistributionPeriod_ time in seconds used for notifying rewards
     */
    function initialize (uint256 penaltyRedistributionPeriod_) external initializer {
        __ReentrancyGuard_init();
        __ERC20_init("ANT Token", "ANT");
        __ERC20Permit_init("ANT Token");
        __PrivilegedGroupUpgradeable_init();
        penaltyRedistributionShareMantissa = 5e17; // 50%
        penaltyRedistributionPeriod = penaltyRedistributionPeriod_;
    }

    /* ========== VIEWS ========== */

    /**
     * @notice 16 decimal places
     * @dev Due to a relationship with another token in a 1:100 ratio
     */
    function decimals() public pure override returns (uint8) {
        return 16;
    }

    /**
     * @notice Shows real balanceOf with the authority od account
     * @dev Overwrite original balanceOf, extract collateral
     */
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account) - totalCollateral[account];
    }

    /**
     * @notice Return tokens balanceOf with blocked collateral
     * @dev Simply child balanceOf, collateral could be only released back to the account or distributed
     */
    function balanceOfWithCollateral(address account) external view returns (uint256) {
        return super.balanceOf(account);
    }

    /**
     * @notice Return collateral amount locked from account for sepender address
     */
    function checkCollateralAmount(address from, address to) external view returns (uint256) {
        return collateral[from][to].collateralAmount;
    }

    /**
     * @notice Return penalty redistribution mantissa saved for given collateral
     */
    function checkCollateralPenaltyMantissa(address from, address to) external view returns (uint256) {
        return collateral[from][to].penaltyMantissa;
    }

    /**
     * @notice Calculate minimal collateral which given account could set
     * @dev Minimal collateral ensures the account does not lose authorization due to potencial penalize
     *
     * Example for 50 auth (50e18) and penalty 10% (1e17 mantissa):
     * 50e18 / 1 - 10% = 55555555555555555555(5)
     * at least +1 must be added,
     * because 90% * 55555555555555555555 = 49999999999999999999 and breaks auth
     */
    function calcMinimalCollateral(address account, uint256 penaltyMantissa) public view returns (uint256) {
        uint256 authAmount = stakingContract.accountAuthorizedAmountRequirement(account);

        // mantisa can not be 1e18
        uint256 minColl = (authAmount * 1e18 / (1e18 - penaltyMantissa));

        if (minColl * (1e18 - penaltyMantissa) / 1e18 < authAmount) {
            minColl += 1;
        }
        return minColl;
    }

    /**
     * @notice Calculate minimal collateral given account could set
     * @dev Uses global penaltyRedistributionShareMantissa
     */
    function calcGlobalMinimalCollateral(address account) public view returns (uint256) {
        return calcMinimalCollateral(account, penaltyRedistributionShareMantissa);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    /**
     * @notice Allows account to block his tokens as collater for another address
     * @dev Analogous to ERC20 approve, but not allow to decrease already set collateral
     */
    function setCollateralFor(address receiver, uint256 amount) external nonReentrant {
        require(receiver != address(0), "receiver can not be zero address");
        require(stakingContract.isAccountRegistered(_msgSender()), "sender is not registered");

        uint256 currentCollateralAmount = collateral[_msgSender()][receiver].collateralAmount;

        // consider the current collateral for this receiver
        require(balanceOf(_msgSender()) + currentCollateralAmount >= amount, "insufficient balance");
        require(currentCollateralAmount < amount, "collateral can be only increased");
        require(amount >= calcGlobalMinimalCollateral(_msgSender()), "collateral too small");

        // increase total collateral
        totalCollateral[_msgSender()] -= currentCollateralAmount;
        totalCollateral[_msgSender()] += amount;

        collateral[_msgSender()][receiver] = SpenderCollateral({
            penaltyMantissa: penaltyRedistributionShareMantissa, // overwrite mantissa
            collateralAmount: amount
        });

        emit CollateralSet(_msgSender(), receiver, amount, penaltyRedistributionShareMantissa);
    }

    /**
     * @notice Unblocks account tokens, previously used as collateral
     * @dev Blocked tokens can be released by address for which they are blocked, part of the tokens could be
     *      distributed as penalty in ratio defined with penaltyMantissa
     */
    function releaseCollateral(address account, uint256 penaltyAmount)
        external
        nonReentrant
    {
        SpenderCollateral memory currentCollateral = collateral[account][_msgSender()];
        require(currentCollateral.collateralAmount >= penaltyAmount, "penalty exceeds collateral");

        uint256 realPenaltyAmount = (currentCollateral.penaltyMantissa * penaltyAmount) / 1e18;

        // release remaining amount
        _releaseCollateral(account, currentCollateral.collateralAmount - realPenaltyAmount);

        if (realPenaltyAmount != 0) {
            _penalizeCollateral(account, realPenaltyAmount);
        }
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    /**
     * @dev Override OpenZeppelin ERC20 function
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        // if not minting or burning
        if (from != address(0) && to != address(0)) {
            // check available balance, not counting collateral
            require(balanceOf(from) >= amount, "amount exceeds unblocked balance");

            require(address(stakingContract) != address(0), "staking contract not set");
            stakingContract.changeStakeOwnership(from, to, amount);
        }
    }

    /**
     * @notice Internal function which decrease account collateral
     * @dev Does not checks if amount exceeds collateral
     */
    function _decreaseCollateral(address account, address spender, uint256 amount) internal {
        SpenderCollateral storage currentCollateral = collateral[account][spender];
        require(currentCollateral.collateralAmount >= amount, "decrease exceeds collateral");

        if (currentCollateral.collateralAmount == amount) {
            delete collateral[account][spender];
        } else {
            currentCollateral.collateralAmount -= amount;
        }
        totalCollateral[account] -= amount;
    }

    /**
     * @notice Internal function which release account collateral
     * @dev Used by public releaseCollateral
     */
    function _releaseCollateral(address account, uint256 amount) internal {
        _decreaseCollateral(account, _msgSender(), amount);
        emit CollateralReleased(account, _msgSender(), amount);
    }

    /**
     * @notice distributed part of collateral burn amount to all stakers
     * @dev unstake all (make unauthorized) and send back stake to the account
            in case of possible break authorization by removing collateral
     */
    function _penalizeCollateral(address account, uint256 penaltyAmount) internal {
        _decreaseCollateral(account, _msgSender(), penaltyAmount);

        stakingContract.unstakeForDistributon(account, penaltyAmount);

        // approve staking token for transferFrom notifyRewardAmount
        IERC20Upgradeable(stakingContract.stakeToken()).safeApprove(address(stakingContract), penaltyAmount);

        stakingContract.notifyRewardAmount(
            address(this),
            address(stakingContract.stakeToken()),
            penaltyAmount,
            penaltyRedistributionPeriod
        );

        emit CollateralDistributed(account, _msgSender(), penaltyAmount);
    }

    /* ========== PRIVILEGED RESTRICTED FUNCTIONS ========== */

    /**
     * @notice Allows privileged account to mint tokens
     */
    function mint(address to, uint256 amount) public onlyPrivileged {
        _mint(to, amount);
    }

    /**
     * @notice Allows privileged account to burn tokens
     * @dev Could not burn tokens that are already in collateral
     */
    function burn(address from, uint256 amount) public onlyPrivileged {
        // check this contract balance with collateral
        require(balanceOf(from) >= amount, "exceeds uncollaterized balance");

        _burn(from, amount);
    }

    /* ========== OWNER RESTRICTED FUNCTIONS ========== */

    /**
     * @notice Allows owner account to set rewarding staking contract
     */
    function setStakingAddress(address stakingAddress) external onlyOwner {
        stakingContract = StakingV2(stakingAddress);
    }

    /**
     * @notice Allows owner account to set distribution penalty
     * @param penalty Expressed as a percentage
     */
    function setDistributePenaltyMantissa(uint256 penalty) external onlyOwner {
        // penalty can not be 100%, because penalizeCollateral would break account auth
        require(penalty < 1e18, "must be beetwen 0 and 1e18");

        penaltyRedistributionShareMantissa = penalty;
    }

    /**
     * @notice Allows owner account to set penalty redistribution period
     */
    function setPenaltyRedistributionPeriod(uint256 redistributionPeriod) external onlyOwner {
        penaltyRedistributionPeriod = redistributionPeriod;
    }
}
