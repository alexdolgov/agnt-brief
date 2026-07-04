// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
pragma abicoder v2;

import "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";
import "openzeppelin/token/ERC20/IERC20.sol";
import "openzeppelin/access/Ownable.sol";
import "openzeppelin/security/ReentrancyGuard.sol";
import "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import "openzeppelin/utils/cryptography/MerkleProof.sol";
import "openzeppelin/utils/math/SafeMath.sol";

import "./interfaces/IPair.sol";
import "./interfaces/IFactory.sol";

import "./interfaces/IWNATIVE.sol";

/**
 * @title Metropolis FairLaunch
 * @author BlueLabs
 * @notice Implements a fairlaunch in two phases:
 * 1st phase: only allowed accounts can buy tokens within a limit. the limit depends on the amount of Metronix NFTs a user hold
 * 2nd phase: everyone can buy token without limit
 *
 * Phases are timebased. Fairlaunch ends when time is over or the sell limit is reached
 *
 */
contract MetroFairLaunch is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    bytes32 public ROOT; // hold merkle root

    struct userInfo {
        uint256 allocation;
        uint256 maxAllocation;
        bool hasClaimed; // has already claimed its lp share
    }

    mapping(address => userInfo) users;

    address public immutable LAUNCH_TOKEN;
    address public immutable WNATIVE;
    address public lpToClaim;
    IFactory public immutable FACTORY;
    address public immutable TREASURY;

    uint256 public immutable START_TIME;
    uint256 public immutable PUBLIC_SALE_START_TIME;
    uint256 public immutable END_TIME;
    uint256 public immutable CLAIM_LOCK_DURATION; 
    uint256 public constant MAX_LOCK_TIME = 30 days;

    uint256 private constant ETH_LIMIT = 400_000; // 400_000;
    uint256 private constant ETH_MAX_ALLOCATION = 4000;  

    uint256 public immutable BUY_LIMIT;
    uint256 public immutable DEFAULT_MAX_ALLOCATION;

    uint256 public totalAllocation;
    uint256 public totalLPAmountToClaim;

    uint256 public lpSMRAmount;
    bool public isLpBuilt;

    uint256 public lpBuiltAt;

    address public emergencyOperator; // Multisig operator with publicly known partners
    bool emergency; // in case of emergency, user can withdraw his staked funds

    constructor(
        address launchToken,
        address wnative,
        IFactory factory,
        address treasury,
        uint256 startTime,
        uint256 publicSaleStartTime,
        uint256 endTime,
        uint256 claimLockDuration,
        bytes32 root
    ) {
        require(
            launchToken != address(0) &&
                wnative != address(0) &&
                address(factory) != address(0),
            "init: zero address"
        );

        require(
            startTime < endTime &&
                startTime < publicSaleStartTime &&
                publicSaleStartTime < endTime,
            "invalid timestamp"
        );

        require(claimLockDuration <= MAX_LOCK_TIME, 'invalid lock time');

        LAUNCH_TOKEN = launchToken;
        WNATIVE = wnative;
        FACTORY = factory;
        TREASURY = treasury;
        START_TIME = startTime;
        PUBLIC_SALE_START_TIME = publicSaleStartTime;
        END_TIME = endTime;
        CLAIM_LOCK_DURATION = claimLockDuration;
        ROOT = root;

        uint256 decimals = 18; // IERC20Metadata(wnative).decimals();

        BUY_LIMIT = uint256(ETH_LIMIT).mul(10**decimals); 
        DEFAULT_MAX_ALLOCATION = uint256(ETH_MAX_ALLOCATION).mul(10**decimals);

    }

    /********************************************/
    /****************** EVENTS ******************/
    /********************************************/

    event Buy(address indexed user, uint256 ftmAmount);
    event Claim(address indexed user, uint256 lpAmount);
    event LPBuild(uint256 excAmount, uint256 ftmAmount);
    event NewRefEarning(address referrer, uint256 ftmAmount);

    event TransferEmergencyOperator(address prevOperator, address newOperator);
    event EmergencyWithdraw(address indexed user, uint256 ftmAmount);
    event UpdateUserMaxAllocation(
        address indexed user,
        uint256 maxAllocation,
        address operator
    );
    event EmergencyFairlaunchCanceled(
        address indexed operator,
        uint256 lumAmount
    );

    event MerkleRootUpdated(bytes32 _root);

    /***********************************************/
    /****************** MODIFIERS ******************/
    /***********************************************/

    modifier isSaleActive() {
        require(hasStarted() && !hasEnded(), "isActive: sale is not active");
        _;
    }

    modifier isClaimable() {
        require(hasClaimLockEnded() && isLpBuilt, "isClaimable: claim time not reached");
        _;
    }

    /**************************************************/
    /****************** PUBLIC VIEWS ******************/
    /**************************************************/

    /**
     * @dev get remaining time before the end of the presale
     */
    function getRemainingTime() external view returns (uint256) {
        if (hasEnded()) return 0;
        return END_TIME.sub(_currentBlockTimestamp());
    }

    /**
     * @dev get user share times 1e5
     */
    function getUserShare(address user) external view returns (uint256) {
        return users[user].allocation.mul(1e5).div(totalAllocation);
    }

    /**
     * @dev has the fairlaunch started
     */
    function hasStarted() public view returns (bool) {
        return _currentBlockTimestamp() >= START_TIME;
    }

    /**
     * @dev has the public sale started
     */
    function hasPublicSaleStarted() public view returns (bool) {
        return _currentBlockTimestamp() >= PUBLIC_SALE_START_TIME;
    }

    /**
     * @dev has the fairlaunch ended
     */
    function hasEnded() public view returns (bool) {
        return
            (totalAllocation >= BUY_LIMIT) ||
            (END_TIME <= _currentBlockTimestamp());
    }

    /**
     * @dev has the claim lock ended
     */
    function hasClaimLockEnded() public view returns (bool) {
        return 
            isLpBuilt && ( _currentBlockTimestamp() - lpBuiltAt ) >= CLAIM_LOCK_DURATION;
    }

    /**
     * @dev users getter
     */
    function getUserInfo(address userAddress)
        public
        view
        returns (
            uint256 allocation,
            uint256 maxAllocation,
            bool hasClaimed
        )
    {
        userInfo storage user = users[userAddress];
        allocation = user.allocation;
        maxAllocation = user.maxAllocation;
        if (maxAllocation == 0) maxAllocation = DEFAULT_MAX_ALLOCATION;
        hasClaimed = user.hasClaimed;
    }

    /****************************************************************/
    /****************** EXTERNAL PUBLIC FUNCTIONS  ******************/
    /****************************************************************/

    /**
     * @dev buy for a amount. Note: Sale is in two phases:
     * 1st phase: only users on the allowlist (typically nft holders) can buy
     * 2st phase: after public sale started everyone can buy.
     * @param _nativeAmount: amount of native token to buy with
     * @param nftCount: number of nfts a user has
     * @param proof: merkle proof for the user
     */
    function buy(uint256 _nativeAmount, uint256 nftCount, bytes32[] memory proof)
        external
        payable
        isSaleActive
    {
        require(!emergency, 'buy: emergency active');
        require(_nativeAmount > 0, "buy: zero amount");

        IWNATIVE(WNATIVE).deposit{value: _nativeAmount}();

        userInfo storage user = users[msg.sender];
        uint256 userAllocation = user.allocation; // gas savings
        uint256 userMaxAllocation = user.maxAllocation; // gas savings

        uint256 maxAllocation = userMaxAllocation != 0
            ? userMaxAllocation
            : DEFAULT_MAX_ALLOCATION;


        if (block.timestamp < PUBLIC_SALE_START_TIME) {
            require(
                MerkleProof.verify(
                    proof,
                    ROOT,
                    keccak256(bytes.concat(keccak256(abi.encode(msg.sender, nftCount))))
                ),
                "not on the allowlist. public sale not started"
            );

            require(
                userAllocation.add(_nativeAmount) <= maxAllocation * nftCount,
                "buy: total amount cannot exceed maxAllocation"
            );
        }

        uint256 _totalAllocation = totalAllocation;

        require(
            _totalAllocation.add(_nativeAmount) <= BUY_LIMIT,
            "amount exceeds global buy limit"
        );

        user.allocation = userAllocation.add(_nativeAmount);
        totalAllocation = _totalAllocation.add(_nativeAmount);

        uint256 treasuryAmount = _nativeAmount.div(2); // 50 % goes to the treasury
        lpSMRAmount = lpSMRAmount.add(_nativeAmount.sub(treasuryAmount)); // 50% goes to the pair

        emit Buy(msg.sender, _nativeAmount);
    }

    /**
     * @dev claim LP tokens after the lock duration
     */
    function claim() external isClaimable {
        userInfo storage user = users[msg.sender];

        uint256 userAllocation = user.allocation; // gas savings
        require(
            totalAllocation > 0 && userAllocation > 0,
            "claim: zero allocation"
        );
        require(!user.hasClaimed, "claim: already claimed");
        user.hasClaimed = true;

        uint256 LPAmountToClaim = userAllocation.mul(totalLPAmountToClaim).div(
            totalAllocation
        );
        _safeClaimTransfer(msg.sender, LPAmountToClaim, IERC20(lpToClaim));

        emit Claim(msg.sender, LPAmountToClaim);
    }

    /****************************************************************/
    /********************** OWNABLE FUNCTIONS  **********************/
    /****************************************************************/

    struct allocationSettings {
        address account;
        uint256 maxAllocation;
    }

    /**
    @dev For custom allocations, used for launch partners users
    @param _users: users to change default allocation
    */
    function setUsersAllocation(allocationSettings[] memory _users)
        public
        onlyOwner
    {
        for (uint256 i = 0; i < _users.length; ++i) {
            allocationSettings memory userAllocation = _users[i];
            userInfo storage user = users[userAllocation.account];
            if (user.maxAllocation < userAllocation.maxAllocation) {
                user.maxAllocation = userAllocation.maxAllocation;
                emit UpdateUserMaxAllocation(
                    userAllocation.account,
                    userAllocation.maxAllocation,
                    msg.sender
                );
            }
        }
    }

    /**
     * @dev build LP after the fairlaunch has ended. Admit function
     */
    function buildLP() external virtual nonReentrant onlyOwner {
        require(!emergency, 'buildLP: emergency active');
        require(hasEnded() && !isLpBuilt, "buildLP: sale has not ended");

        address _lpToClaim = FACTORY.getPair(LAUNCH_TOKEN, WNATIVE);

        require(_lpToClaim != address(0), "LP zero address");
        require(IERC20(_lpToClaim).totalSupply() == 0, "LP has supply");

        isLpBuilt = true;

        uint256 tokenAmount = IERC20(LAUNCH_TOKEN).balanceOf(address(this));

        IERC20(LAUNCH_TOKEN).safeTransfer(_lpToClaim, tokenAmount);
        IERC20(WNATIVE).safeTransfer(_lpToClaim, lpSMRAmount);

        totalLPAmountToClaim = IPair(_lpToClaim).mint(address(this));
        lpToClaim = _lpToClaim;

        // add remaining SMR to treasury
        IERC20(WNATIVE).safeTransfer(
            address(TREASURY),
            IERC20(WNATIVE).balanceOf(address(this))
        );

        // save timestamp for starting the lock duration
        lpBuiltAt = block.timestamp;

        emit LPBuild(tokenAmount, lpSMRAmount);
    }

    /**
     * @dev set the emergency operator
     */
    function initEmergencyOperator(address operator) external onlyOwner {
        require(
            emergencyOperator == address(0),
            "initEmergencyOperator: already initialized"
        );
        emergencyOperator = operator;
        emit TransferEmergencyOperator(address(0), emergencyOperator);
    }

    /********************************************************/
    /****************** /!\ EMERGENCY ONLY ******************/
    /********************************************************/

    /**
     * @dev Failsafe
     *
     * Only callable by the multisig emergencyOperator
     *
     * This is only possible before LP is built.
     * The LUM will be transferred back to the multisig owner and staked funds
     * can be withdrawn by user
     */
    function emergencyCancelFairlaunch() external {
        require(!emergency, "already emergency");
        require(
            msg.sender == emergencyOperator,
            "emergencyWithdrawFunds: not allowed"
        );

        uint256 lumAmount = IERC20(LAUNCH_TOKEN).balanceOf(address(this));
        IERC20(LAUNCH_TOKEN).safeTransfer(msg.sender, lumAmount);

        emergency = true;

        emit EmergencyFairlaunchCanceled(msg.sender, lumAmount);
    }

    /**
     * @dev emergency withdraw of staked funds if fairlaunch is canceled
     */
    function emergencyWithdraw() external {
        require(emergency && !isLpBuilt, "no emergency");

        userInfo storage user = users[msg.sender];
        uint256 _allocation = user.allocation;

        IERC20(WNATIVE).safeTransfer(msg.sender, _allocation);

        emit EmergencyWithdraw(msg.sender, _allocation);
    }

    /********************************************************/
    /****************** INTERNAL FUNCTIONS ******************/
    /********************************************************/

    /**
     * @dev Safe token transfer function, in case rounding error causes contract to not have enough tokens
     */
    function _safeClaimTransfer(
        address to,
        uint256 amount,
        IERC20 lpToken
    ) internal {
        uint256 lpTokenBalance = lpToken.balanceOf(address(this));
        if (amount > lpTokenBalance) {
            lpToken.safeTransfer(to, lpTokenBalance);
        } else {
            lpToken.safeTransfer(to, amount);
        }
    }

    /**
     * @dev Utility function to get the current block timestamp
     */
    function _currentBlockTimestamp() internal view virtual returns (uint256) {
        return block.timestamp;
    }

    /**
     * @dev Update Merkle Root
     */
    function updateMerkleRoot(bytes32 _root) external onlyOwner {
        ROOT = _root;
        emit MerkleRootUpdated(_root);
    }
}
