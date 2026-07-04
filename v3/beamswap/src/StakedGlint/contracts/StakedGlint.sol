// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IstGlint.sol";
import "./interfaces/IstGlintUsage.sol";

/*
 * stGLINT is Beamswap's escrowed governance token obtainable by converting GLINT to it
 * It's non-transferable, except from/to whitelisted addresses
 * It can be converted back to GLINT through a vesting process
 * This contract is made to receive stGLINT deposits from users in order to allocate them to Usages contracts
 */
contract StakedGlint is
    Ownable,
    ReentrancyGuard,
    ERC20("Staked GLINT", "stGLINT"),
    IstGlint
{
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;

    struct stGlintBalance {
        uint256 allocatedAmount; // Amount of stGLINT allocated to a Usage
        uint256 redeemingAmount; // Total amount of stGLINT currently being redeemed
    }

    struct RedeemInfo {
        uint256 glintAmount; // GLINT amount to receive when vesting has ended
        uint256 stGlintAmount; // stGLINT amount to redeem
        uint256 endTime; // end time of redeeming if left for the desired duration
        IstGlintUsage stakingAddress;
        uint256 stakingAllocation; // Share of redeeming stGLINT to allocate to the Staking Usage contract
        uint256 startTime; // start time of redeem action
    }

    IERC20 public immutable glint; // GLINT token to convert to/from
    IstGlintUsage public stakingAddress; // Staking contract address

    EnumerableSet.AddressSet private _transferWhitelist; // addresses allowed to send/receive stGLINT

    mapping(address => mapping(address => uint256)) public usageApprovals; // Usage approvals to allocate stGLINT
    mapping(address => mapping(address => uint256))
        public
        override usageAllocations; // Active stGLINT allocations to usages

    uint256 public constant MAX_DEALLOCATION_FEE = 200; // 2%
    mapping(address => uint256) public usagesDeallocationFee; // Fee paid when deallocating stGLINT

    uint256 public constant MAX_FIXED_RATIO = 1 ether; // 100%

    // Redeeming min/max settings
    uint256 public minRedeemRatio = MAX_FIXED_RATIO / 2; // 1:0.5 precision is 1**18
    uint256 public maxRedeemRatio = MAX_FIXED_RATIO; // 1:1 precision is 1**18
    uint256 public minRedeemDuration = 15 days;
    uint256 public maxRedeemDuration = 90 days;
    // Adjusted staking rewards for redeeming stGLINT
    uint256 public redeemStakingAdjustment = MAX_FIXED_RATIO / 2; // 50% precision is 1**18

    // burn address
    address internal constant BURN_ADDRESS =
        0x000000000000000000000000000000000000dEaD;

    mapping(address => stGlintBalance) public stGlintBalances; // User's stGLINT balances
    mapping(address => RedeemInfo[]) public userRedeems; // User's redeeming instances

    constructor(IERC20 _glint) {
        glint = _glint;
        _transferWhitelist.add(address(this));
    }

    event ApproveUsage(
        address indexed userAddress,
        address indexed usageAddress,
        uint256 amount
    );
    event Convert(address indexed from, address to, uint256 amount);
    event UpdateRedeemSettings(
        uint256 minRedeemRatio,
        uint256 maxRedeemRatio,
        uint256 minRedeemDuration,
        uint256 maxRedeemDuration,
        uint256 redeemStakingAdjustment
    );
    event UpdateStakingAddress(
        address previousStakingAddress,
        address newStakingAddress
    );
    event UpdateDeallocationFee(address indexed usageAddress, uint256 fee);
    event SetTransferWhitelist(address account, bool add);
    event Redeem(
        address indexed userAddress,
        uint256 stGlintAmount,
        uint256 glintAmount,
        uint256 duration
    );
    event FinalizeRedeem(
        address indexed userAddress,
        uint256 stGlintAmount,
        uint256 glintAmount
    );
    event CancelRedeem(address indexed userAddress, uint256 stGlintAmount);
    event UpdateRedeemStakingAddress(
        address indexed userAddress,
        uint256 redeemIndex,
        address previousStakingAddress,
        address newStakingAddress
    );
    event Allocate(
        address indexed userAddress,
        address indexed usageAddress,
        uint256 amount
    );
    event Deallocate(
        address indexed userAddress,
        address indexed usageAddress,
        uint256 amount,
        uint256 fee
    );

    /***********************************************/
    /****************** MODIFIERS ******************/
    /***********************************************/

    /*
     * @dev Check if a redeem entry exists
     */
    modifier validateRedeem(address userAddress, uint256 redeemIndex) {
        require(
            redeemIndex < userRedeems[userAddress].length,
            "validateRedeem: redeem entry does not exist"
        );
        _;
    }

    /**************************************************/
    /****************** PUBLIC VIEWS ******************/
    /**************************************************/

    /*
     * @dev Returns user's stGLINT balances
     */
    function getStGlintBalance(
        address userAddress
    ) external view returns (uint256 allocatedAmount, uint256 redeemingAmount) {
        stGlintBalance storage balance = stGlintBalances[userAddress];
        return (balance.allocatedAmount, balance.redeemingAmount);
    }

    /*
     * @dev returns redeemable GLINT for "amount" of stGLINT vested for "duration" seconds
     */
    function getGlintByVestingDuration(
        uint256 amount,
        uint256 duration
    ) public view returns (uint256) {
        if (duration < minRedeemDuration) {
            return 0;
        }

        // capped to maxRedeemDuration
        if (duration > maxRedeemDuration) {
            return (amount * maxRedeemRatio) / MAX_FIXED_RATIO;
        }

        uint256 ratio = minRedeemRatio +
            ((duration - minRedeemDuration) *
                (maxRedeemRatio - minRedeemRatio)) /
            (maxRedeemDuration - minRedeemDuration);

        return (amount * ratio) / MAX_FIXED_RATIO;
    }

    /**
     * @dev returns quantity of "userAddress" pending redeems
     */
    function getUserRedeemsLength(
        address userAddress
    ) external view returns (uint256) {
        return userRedeems[userAddress].length;
    }

    /**
     * @dev returns "userAddress" info for a pending redeem identified by "redeemIndex"
     */
    function getUserRedeem(
        address userAddress,
        uint256 redeemIndex
    )
        external
        view
        validateRedeem(userAddress, redeemIndex)
        returns (
            uint256 glintAmount,
            uint256 stGlintAmount,
            uint256 endTime,
            address stakingContract,
            uint256 stakingAllocation,
            uint256 startTime
        )
    {
        RedeemInfo storage _redeem = userRedeems[userAddress][redeemIndex];
        return (
            _redeem.glintAmount,
            _redeem.stGlintAmount,
            _redeem.endTime,
            address(_redeem.stakingAddress),
            _redeem.stakingAllocation,
            _redeem.startTime
        );
    }

    /**
     * @dev returns approved xToken to allocate from "userAddress" to "usageAddress"
     */
    function getUsageApproval(
        address userAddress,
        address usageAddress
    ) external view returns (uint256) {
        return usageApprovals[userAddress][usageAddress];
    }

    /**
     * @dev returns allocated xToken from "userAddress" to "usageAddress"
     */
    function getUsageAllocation(
        address userAddress,
        address usageAddress
    ) external view returns (uint256) {
        return usageAllocations[userAddress][usageAddress];
    }

    /**
     * @dev returns length of transferWhitelist array
     */
    function transferWhitelistLength() external view returns (uint256) {
        return _transferWhitelist.length();
    }

    /**
     * @dev returns transferWhitelist array item's address for "index"
     */
    function transferWhitelist(uint256 index) external view returns (address) {
        return _transferWhitelist.at(index);
    }

    /**
     * @dev returns if "account" is allowed to send/receive stGLINT
     */
    function isTransferWhitelisted(
        address account
    ) external view override returns (bool) {
        return _transferWhitelist.contains(account);
    }

    /*******************************************************/
    /****************** OWNABLE FUNCTIONS ******************/
    /*******************************************************/

    /**
     * @dev Updates all redeem ratios and durations
     *
     * Must only be called by owner
     */
    function updateRedeemSettings(
        uint256 minRedeemRatio_,
        uint256 maxRedeemRatio_,
        uint256 minRedeemDuration_,
        uint256 maxRedeemDuration_,
        uint256 redeemStakingAdjustment_
    ) external onlyOwner {
        require(
            minRedeemRatio_ <= maxRedeemRatio_,
            "updateRedeemSettings: wrong ratio values"
        );
        require(
            minRedeemDuration_ < maxRedeemDuration_,
            "updateRedeemSettings: wrong duration values"
        );
        // should never exceed 100%
        require(
            maxRedeemRatio_ <= MAX_FIXED_RATIO &&
                redeemStakingAdjustment_ <= MAX_FIXED_RATIO,
            "updateRedeemSettings: wrong ratio values"
        );

        minRedeemRatio = minRedeemRatio_;
        maxRedeemRatio = maxRedeemRatio_;
        minRedeemDuration = minRedeemDuration_;
        maxRedeemDuration = maxRedeemDuration_;
        redeemStakingAdjustment = redeemStakingAdjustment_;

        emit UpdateRedeemSettings(
            minRedeemRatio_,
            maxRedeemRatio_,
            minRedeemDuration_,
            maxRedeemDuration_,
            redeemStakingAdjustment_
        );
    }

    /**
     * @dev Updates staking contract address
     *
     * Must only be called by owner
     */
    function updateStakingAddress(
        IstGlintUsage stakingAddress_
    ) external onlyOwner {
        // if set to 0, also set divs earnings while redeeming to 0
        if (address(stakingAddress_) == address(0)) {
            redeemStakingAdjustment = 0;
        }

        emit UpdateStakingAddress(
            address(stakingAddress),
            address(stakingAddress_)
        );
        stakingAddress = stakingAddress_;
    }

    /**
     * @dev Updates fee paid by users when deallocating from "usageAddress"
     */
    function updateDeallocationFee(
        address usageAddress,
        uint256 fee
    ) external onlyOwner {
        require(fee <= MAX_DEALLOCATION_FEE, "updateDeallocationFee: too high");

        usagesDeallocationFee[usageAddress] = fee;
        emit UpdateDeallocationFee(usageAddress, fee);
    }

    /**
     * @dev Adds or removes addresses from the transferWhitelist
     */
    function updateTransferWhitelist(
        address account,
        bool add
    ) external onlyOwner {
        require(
            account != address(this),
            "updateTransferWhitelist: Cannot remove xToken from whitelist"
        );

        if (add) _transferWhitelist.add(account);
        else _transferWhitelist.remove(account);

        emit SetTransferWhitelist(account, add);
    }

    /*****************************************************************/
    /******************  EXTERNAL PUBLIC FUNCTIONS  ******************/
    /*****************************************************************/

    /**
     * @dev Approves "usage" address to get allocations up to "amount" of stGLINT from msg.sender
     */
    function approveUsage(
        IstGlintUsage usage,
        uint256 amount
    ) external nonReentrant {
        require(
            address(usage) != address(0),
            "approveUsage: approve to the zero address"
        );

        usageApprovals[msg.sender][address(usage)] = amount;
        emit ApproveUsage(msg.sender, address(usage), amount);
    }

    /**
     * @dev Convert caller's "amount" of GLINT to stGLINT
     */
    function convert(uint256 amount) external nonReentrant {
        _convert(amount, msg.sender);
    }

    /**
     * @dev Convert caller's "amount" of GLINT to stGLINT to "to" address
     */
    function convertTo(
        address to,
        uint256 amount
    ) external override nonReentrant {
        require(address(msg.sender).isContract(), "convertTo: not allowed");
        _convert(amount, to);
    }

    /**
     * @dev Initiates redeem process (stGLINT to GLINT)
     *
     * Handles staking' compensation allocation during the vesting process if needed
     */
    function redeem(
        uint256 stGlintAmount,
        uint256 duration
    ) external nonReentrant {
        require(stGlintAmount > 0, "redeem: stGlintAmount cannot be null");
        require(duration >= minRedeemDuration, "redeem: duration too low");

        _transfer(msg.sender, address(this), stGlintAmount);
        stGlintBalance storage balance = stGlintBalances[msg.sender];

        // get corresponding GLINT amount
        uint256 glintAmount = getGlintByVestingDuration(
            stGlintAmount,
            duration
        );
        emit Redeem(msg.sender, stGlintAmount, glintAmount, duration);

        // if redeeming is not immediate, go through vesting process
        if (duration > 0) {
            // add to SBT total
            balance.redeemingAmount += stGlintAmount;

            // handle staking during the vesting process dynamically based on the duration
            uint256 stakingAllocation = glintAmount;

            // only if compensation is active
            if (stakingAllocation > 0) {
                // allocate to staking
                stakingAddress.allocate(
                    msg.sender,
                    stakingAllocation,
                    new bytes(0)
                );
            }

            // add redeeming entry
            userRedeems[msg.sender].push(
                RedeemInfo(
                    glintAmount,
                    stGlintAmount,
                    _currentBlockTimestamp() + duration,
                    stakingAddress,
                    stakingAllocation,
                    _currentBlockTimestamp()
                )
            );
        } else {
            // immediately redeem for GLINT
            _finalizeRedeem(msg.sender, stGlintAmount, glintAmount);
        }
    }

    /**
     * @dev Finalizes redeem process when vesting duration has been reached
     *
     * Can only be called by the redeem entry owner
     */
    function finalizeRedeem(
        uint256 redeemIndex
    ) external nonReentrant validateRedeem(msg.sender, redeemIndex) {
        stGlintBalance storage balance = stGlintBalances[msg.sender];
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];
        require(
            _currentBlockTimestamp() >= _redeem.startTime + minRedeemDuration,
            "finalizeRedeem: min duration before redeem"
        );

        // remove from SBT total
        balance.redeemingAmount -= _redeem.stGlintAmount;

        uint256 duration = _currentBlockTimestamp() - _redeem.startTime;
        uint256 glintAmount = getGlintByVestingDuration(
            _redeem.stGlintAmount,
            duration
        );
        _finalizeRedeem(msg.sender, _redeem.stGlintAmount, glintAmount);

        // handle staking compensation if any was active
        if (_redeem.stakingAllocation > 0) {
            // deallocate from staking
            IstGlintUsage(_redeem.stakingAddress).deallocate(
                msg.sender,
                _redeem.stakingAllocation,
                new bytes(0)
            );
        }

        // remove redeem entry
        _deleteRedeemEntry(redeemIndex);
    }

    /**
     * @dev Updates staking address for an existing active redeeming process
     *
     * Can only be called by the involved user
     * Should only be used if staking contract was to be migrated
     */
    function updateRedeemStakingAddress(
        uint256 redeemIndex
    ) external nonReentrant validateRedeem(msg.sender, redeemIndex) {
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];

        // only if the active staking contract is not the same anymore
        if (
            stakingAddress != _redeem.stakingAddress &&
            address(stakingAddress) != address(0)
        ) {
            if (_redeem.stakingAllocation > 0) {
                // deallocate from old staking contract
                _redeem.stakingAddress.deallocate(
                    msg.sender,
                    _redeem.stakingAllocation,
                    new bytes(0)
                );
                // allocate to new used staking contract
                stakingAddress.allocate(
                    msg.sender,
                    _redeem.stakingAllocation,
                    new bytes(0)
                );
            }

            emit UpdateRedeemStakingAddress(
                msg.sender,
                redeemIndex,
                address(_redeem.stakingAddress),
                address(stakingAddress)
            );
            _redeem.stakingAddress = stakingAddress;
        }
    }

    /**
     * @dev Cancels an ongoing redeem entry
     *
     * Can only be called by its owner
     */
    function cancelRedeem(
        uint256 redeemIndex
    ) external nonReentrant validateRedeem(msg.sender, redeemIndex) {
        stGlintBalance storage balance = stGlintBalances[msg.sender];
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];

        // make redeeming stGLINT available again
        balance.redeemingAmount -= _redeem.stGlintAmount;

        _transfer(address(this), msg.sender, _redeem.stGlintAmount);

        // handle staking compensation if any was active
        if (_redeem.stakingAllocation > 0) {
            // deallocate from staking
            IstGlintUsage(_redeem.stakingAddress).deallocate(
                msg.sender,
                _redeem.stakingAllocation,
                new bytes(0)
            );
        }

        emit CancelRedeem(msg.sender, _redeem.stGlintAmount);

        // remove redeem entry
        _deleteRedeemEntry(redeemIndex);
    }

    /**
     * @dev Allocates caller's "amount" of available stGLINT to "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function allocate(
        address usageAddress,
        uint256 amount,
        bytes calldata usageData
    ) external nonReentrant {
        _allocate(msg.sender, usageAddress, amount);

        // allocates stGLINT to usageContract
        IstGlintUsage(usageAddress).allocate(msg.sender, amount, usageData);
    }

    /**
     * @dev Allocates "amount" of available stGLINT from "userAddress" to caller (ie usage contract)
     *
     * Caller must have an allocation approval for the required xToken stGLINT from "userAddress"
     */
    function allocateFromUsage(
        address userAddress,
        uint256 amount
    ) external override nonReentrant {
        _allocate(userAddress, msg.sender, amount);
    }

    /**
     * @dev Deallocates caller's "amount" of available stGLINT from "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function deallocate(
        address usageAddress,
        uint256 amount,
        bytes calldata usageData
    ) external nonReentrant {
        _deallocate(msg.sender, usageAddress, amount);

        // deallocate stGLINT into usageContract
        IstGlintUsage(usageAddress).deallocate(msg.sender, amount, usageData);
    }

    /**
     * @dev Deallocates "amount" of allocated stGLINT belonging to "userAddress" from caller (ie usage contract)
     *
     * Caller can only deallocate stGLINT from itself
     */
    function deallocateFromUsage(
        address userAddress,
        uint256 amount
    ) external override nonReentrant {
        _deallocate(userAddress, msg.sender, amount);
    }

    /********************************************************/
    /****************** INTERNAL FUNCTIONS ******************/
    /********************************************************/

    /**
     * @dev Convert caller's "amount" of GLINT into stGLINT to "to"
     */
    function _convert(uint256 amount, address to) internal {
        require(amount != 0, "convert: amount cannot be null");

        // mint new stGLINT
        _mint(to, amount);

        emit Convert(msg.sender, to, amount);
        glint.safeTransferFrom(msg.sender, address(this), amount);
    }

    /**
     * @dev Finalizes the redeeming process for "userAddress" by transferring him "glintAmount" and removing "stGlintAmount" from supply
     *
     * Any vesting check should be ran before calling this
     * GLINT excess is automatically burnt
     */
    function _finalizeRedeem(
        address userAddress,
        uint256 stGlintAmount,
        uint256 glintAmount
    ) internal {
        uint256 glintExcess = stGlintAmount - glintAmount;

        // sends due GLINT tokens
        glint.safeTransfer(userAddress, glintAmount);

        // burns GLINT excess if any
        if (glintExcess > 0) {
            glint.safeTransfer(BURN_ADDRESS, glintExcess);
        }

        _burn(address(this), stGlintAmount);

        emit FinalizeRedeem(userAddress, stGlintAmount, glintAmount);
    }

    /**
     * @dev Allocates "userAddress" user's "amount" of available stGLINT to "usageAddress" contract
     *
     */
    function _allocate(
        address userAddress,
        address usageAddress,
        uint256 amount
    ) internal {
        require(amount > 0, "allocate: amount cannot be null");

        stGlintBalance storage balance = stGlintBalances[userAddress];

        // approval checks if allocation request amount has been approved by userAddress to be allocated to this usageAddress
        uint256 approvedStGlint = usageApprovals[userAddress][usageAddress];
        require(approvedStGlint >= amount, "allocate: non authorized amount");

        // remove allocated amount from usage's approved amount
        usageApprovals[userAddress][usageAddress] = approvedStGlint - amount;

        // update usage's allocatedAmount for userAddress
        usageAllocations[userAddress][usageAddress] =
            usageAllocations[userAddress][usageAddress] +
            amount;

        // adjust user's stGLINT balances
        balance.allocatedAmount = balance.allocatedAmount + amount;
        _transfer(userAddress, address(this), amount);

        emit Allocate(userAddress, usageAddress, amount);
    }

    /**
     * @dev Deallocates "amount" of available stGLINT to "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function _deallocate(
        address userAddress,
        address usageAddress,
        uint256 amount
    ) internal {
        require(amount > 0, "deallocate: amount cannot be null");

        // check if there is enough allocated stGLINT to this usage to deallocate
        uint256 allocatedAmount = usageAllocations[userAddress][usageAddress];
        require(allocatedAmount >= amount, "deallocate: non authorized amount");

        // remove deallocated amount from usage's allocation
        usageAllocations[userAddress][usageAddress] = allocatedAmount - amount;

        uint256 deallocationFeeAmount = (amount *
            usagesDeallocationFee[usageAddress]) / 10000;

        // adjust user's stGLINT balances
        stGlintBalance storage balance = stGlintBalances[userAddress];
        balance.allocatedAmount -= amount;

        _transfer(address(this), userAddress, amount - deallocationFeeAmount);
        // burn corresponding GLINT and stGLINT
        glint.safeTransfer(BURN_ADDRESS, deallocationFeeAmount);
        _burn(address(this), deallocationFeeAmount);

        emit Deallocate(
            userAddress,
            usageAddress,
            amount,
            deallocationFeeAmount
        );
    }

    function _deleteRedeemEntry(uint256 index) internal {
        userRedeems[msg.sender][index] = userRedeems[msg.sender][
            userRedeems[msg.sender].length - 1
        ];
        userRedeems[msg.sender].pop();
    }

    /**
     * @dev Hook override to forbid transfers except from whitelisted addresses and minting
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 /*amount*/
    ) internal view override {
        require(
            from == address(0) ||
                _transferWhitelist.contains(from) ||
                _transferWhitelist.contains(to),
            "transfer: not allowed"
        );
    }

    /**
     * @dev Utility function to get the current block timestamp
     */
    function _currentBlockTimestamp() internal view virtual returns (uint256) {
        /* solhint-disable not-rely-on-time */
        return block.timestamp;
    }
}
