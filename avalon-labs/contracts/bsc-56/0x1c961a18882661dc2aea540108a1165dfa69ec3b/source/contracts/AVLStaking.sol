pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./interface/IERC20Mintable.sol";

contract AVLStaking is AccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");
    bytes32 public constant APR_MANAGER_ROLE = keccak256("APR_MANAGER_ROLE");
    bytes32 public constant PAUSE_MANAGER_ROLE =
        keccak256("PAUSE_MANAGER_ROLE");

    // It's used to calculate the interest base.
    uint256 public constant APR_COEFFICIENT = 10 ** 8;

    uint256 public totalUnderlying;
    uint256 public totalsavlLockedAmount;
    uint256 public lastCheckpoint;
    IERC20 public avl;
    IERC20Mintable public savl;

    // targetAPR: 0.1% => 100000 (10 ** 5)
    // targetAPR: 10% => 10000000 (10 ** 7)
    // targetAPR: 100% => 100000000 (10 ** 8)
    uint256 public targetAPR;

    // 100%
    uint256 public maxAPR = 10 ** 8;

    // Interest that has not yet been settled.
    uint256 public unpaidInterest;

    // default 7 days
    uint256 public processPeriod = 7 days;

    uint256 constant PROCESS_PERIOD_MAX = 30 days;

    uint256 public constant FEE_BASE = 10 ** 8;

    uint256 public unstakingFee = 0;

    // the fee of unstaking
    uint256 public unclaimFee = 0;

    struct RedeemDetail {
        uint256 id;
        uint256 timestamp;
        address user;
        uint256 underlyingAmount;
        // False not redeem, or True.
        bool isDone;
    }

    event RedeemRequested(
        uint256 id,
        uint256 timestamp,
        address indexed user,
        uint256 underlyingAmount
    );

    event Redeem(
        uint256 id,
        uint256 timestamp,
        address indexed user,
        uint256 underlyingAmount
    );

    // Mapping from redeem index to RedeemDetail.
    mapping(uint256 => RedeemDetail) public redeemDetails;
    // redeem index.
    uint256 public redeemIndex;

    event TargetAPRChanged(uint256 _new);
    event ProcessPeriodChanged(uint256 _new);
    event UnStakingFeeChanged(uint256 _new);

    // Constructor will be called on contract creation
    constructor(address _admin, address _avl, address _savl) {
        require(_admin != address(0), "!_admin");
        require(_avl != address(0), "!_avl");
        require(_savl != address(0), "!_savl");
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(APR_MANAGER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(POOL_MANAGER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(PAUSE_MANAGER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);

        avl = IERC20(_avl);
        savl = IERC20Mintable(_savl);
    }

    function pause() external onlyRole(PAUSE_MANAGER_ROLE) {
        Pausable._pause();
    }

    function unpause() external onlyRole(PAUSE_MANAGER_ROLE) {
        Pausable._unpause();
    }

    function setUnstakingFee(
        uint256 _fee
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_fee <= FEE_BASE, "fee less then 100%");
        unstakingFee = _fee;
        emit UnStakingFeeChanged(_fee);
    }

    /**
     * @dev to set APR
     * @param _targetAPR the amount of APR. it should be multiply 10**6
     */
    function setTargetAPR(
        uint256 _targetAPR
    ) external onlyRole(APR_MANAGER_ROLE) realizeReward {
        require(_targetAPR <= maxAPR, "target apr should be less than max apr");
        targetAPR = _targetAPR;
        emit TargetAPRChanged(_targetAPR);
    }

    /**
     * @dev to set the period of processing
     * @param _processPeriod the period of processing. it's second.
     */
    function setProcessPeriod(
        uint256 _processPeriod
    ) external onlyRole(POOL_MANAGER_ROLE) {
        require(
            _processPeriod <= PROCESS_PERIOD_MAX,
            "exceed PROCESS_PERIOD_MAX"
        );
        processPeriod = _processPeriod;
        emit ProcessPeriodChanged(_processPeriod);
    }

    /**
     * @dev get total underly token amount
     */
    function getTotalUnderlying() public view returns (uint256) {
        // need include manager fee
        uint256 totalInterest = getRPS() * (block.timestamp - lastCheckpoint);
        return totalUnderlying + totalInterest;
    }

    /**
     * @dev get amount of shares by underlying amount
     * @param _amount the amount of underlying
     */
    function getSharesByAmount(uint256 _amount) public view returns (uint256) {
        if (totalsavlLockedAmount == 0) {
            return 0;
        } else {
            return (_amount * totalsavlLockedAmount) / getTotalUnderlying();
        }
    }

    /**
     * @dev get amount by shares
     * @param _shares the amount of cToken
     */
    function getAmountByShares(uint256 _shares) public view returns (uint256) {
        if (totalsavlLockedAmount == 0) {
            return 0;
        } else {
            return (_shares * getTotalUnderlying()) / (totalsavlLockedAmount);
        }
    }

    /**
     * @dev revolutions per second
     */
    function getRPS() public view returns (uint256) {
        // TODO: If use totalUnderlying, then the interest also incurs interest, do we want to switch to principal?
        return (targetAPR * (totalUnderlying)) / (365 days) / (APR_COEFFICIENT);
    }

    modifier realizeReward() {
        if (totalsavlLockedAmount != 0) {
            uint256 totalInterest = getRPS() *
                (block.timestamp - lastCheckpoint);
            unpaidInterest += totalInterest;
            totalUnderlying += totalInterest;
        }
        lastCheckpoint = block.timestamp;
        _;
    }

    /**
     * @dev mint savl
     * @param amount the amount of underlying token
     */
    function mint(uint256 amount) external {
        _mintFor(amount, msg.sender);
    }

    /**
     * @dev mint savl
     * @param amount the amount of underlying token,
     * @param receiver the address be used to receive savl
     */
    function mintFor(uint256 amount, address receiver) external {
        _mintFor(amount, receiver);
    }

    /**
     * @dev mint savl
     * @param amount the amount of underlying token
     * @param receiver the address be used to receive savl
     */
    function _mintFor(
        uint256 amount,
        address receiver
    ) internal realizeReward nonReentrant whenNotPaused {
        require(amount >= 1e18, "mint amount is too small");
        avl.safeTransferFrom(msg.sender, address(this), amount);

        uint256 cTokenAmount;
        if (totalsavlLockedAmount == 0 || totalUnderlying == 0) {
            cTokenAmount = amount;
        } else {
            cTokenAmount = (amount * totalsavlLockedAmount) / totalUnderlying;
        }

        savl.mint(receiver, cTokenAmount);
        totalsavlLockedAmount += cTokenAmount;
        totalUnderlying = totalUnderlying + amount;
    }

    /**
     * @dev redeem savl
     * @param amount the amount of sToken, 1 sToken = 10**18, which eaquals to 1 avl (if not interest).
     * error code
     * 100: redeem is less than the balance
     * 101: totalUnderlying should be greater than 0
     * 102:
     */
    function redeem(
        uint256 amount
    ) external realizeReward nonReentrant whenNotPaused {
        require(totalUnderlying > 0, "totalUnderlying = 0");
        require(totalsavlLockedAmount > 0, "savl total is 0");
        require(amount >= 1e18, "redeem amount is too small");

        uint256 underlyingAmount = (amount * totalUnderlying) /
            totalsavlLockedAmount;

        savl.burn(msg.sender, amount);
        totalsavlLockedAmount -= amount;

        totalUnderlying = totalUnderlying - underlyingAmount;

        redeemIndex++;
        redeemDetails[redeemIndex] = RedeemDetail({
            id: redeemIndex,
            timestamp: block.timestamp,
            user: msg.sender,
            underlyingAmount: underlyingAmount,
            isDone: false
        });

        emit RedeemRequested(
            redeemIndex,
            block.timestamp,
            msg.sender,
            underlyingAmount
        );
    }

    /**
     * @dev claim savl
     * @param idx the index of redeemDetails
     */
    function claimRedeem(
        uint256 idx
    ) external realizeReward nonReentrant whenNotPaused {
        require(redeemDetails[idx].user == msg.sender, "not yours");
        require(redeemDetails[idx].isDone == false, "is done");
        require(
            redeemDetails[idx].timestamp + processPeriod <= block.timestamp,
            "processing"
        );

        redeemDetails[idx].isDone = true;

        uint256 redeemAmount = redeemDetails[idx].underlyingAmount;

        uint256 redeemAmountFee = (redeemAmount * unstakingFee) / FEE_BASE;

        redeemAmount = redeemAmount - redeemAmountFee;

        unclaimFee += redeemAmountFee;

        avl.safeTransfer(msg.sender, redeemAmount);

        emit Redeem(idx, block.timestamp, msg.sender, redeemAmount);
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return getAmountByShares(savl.balanceOf(_owner));
    }

    function getPendingInterest() external view returns (uint256) {
        return getRPS() * (block.timestamp - lastCheckpoint);
    }

    /**
     * @dev Distribute interest
     */
    function distributeInterests()
        external
        realizeReward
        onlyRole(POOL_MANAGER_ROLE)
    {
        IERC20(avl).safeTransferFrom(msg.sender, address(this), unpaidInterest);
        unpaidInterest = 0;
    }

    /**
     * @dev Claim fee
     */
    function claimFee(
        address _receiver
    ) external realizeReward onlyRole(ADMIN_ROLE) {
        IERC20(avl).safeTransfer(_receiver, unclaimFee);
        unclaimFee = 0;
    }
}
