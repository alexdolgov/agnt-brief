// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./interfaces//ISynthTokenV2.sol";
import "./interfaces/IXSynthToken.sol";
import "./interfaces/IXSynthTokenUsage.sol";

/*
 * xSYNTH is Synthswaps escrowed governance token obtainable by converting SYNTH to it
 * It's non-transferable, except from/to whitelisted addresses
 * It can be converted back to SYNTH through a vesting process
 * This contract is made to receive xSYNTH deposits from users in order to allocate them to Usages (plugins) contracts
 */
contract XSynthToken is
    Ownable,
    ReentrancyGuard,
    ERC20("Synth escrowed token", "xSYNTH"),
    IXSynthToken
{
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for ISynthTokenV2;

    struct XSynthBalance {
        uint256 allocatedAmount; // Amount of xSYNTH allocated to a Usage
        uint256 redeemingAmount; // Total amount of xSYNTH currently being redeemed
    }

    struct RedeemInfo {
        uint256 synthAmount; // SYNTH amount to receive when vesting has ended
        uint256 xSynthAmount; // xSYNTH amount to redeem
        uint256 endTime; // end time of redeeming if left for the desired duration
        uint256 startTime; // start time of redeem action
        IXSynthTokenUsage dividendsAddress;
        uint256 dividendsAllocation; // Share of redeeming xSYNTH to allocate to the Dividends Usage contract
    }

    ISynthTokenV2 public immutable synthToken; // SYNTH token to convert to/from
    IXSynthTokenUsage public dividendsAddress; // Synthswap dividends contract

    EnumerableSet.AddressSet private _transferWhitelist; // addresses allowed to send/receive xSYNTH

    mapping(address => mapping(address => uint256)) public usageApprovals; // Usage approvals to allocate xSYNTH
    mapping(address => mapping(address => uint256))
        public
        override usageAllocations; // Active xSYNTH allocations to usages

    uint256 public constant MAX_DEALLOCATION_FEE = 2000; // 20%
    mapping(address => uint256) public usagesDeallocationFee; // Fee paid when deallocating xSYNTH

    uint256 public constant MAX_FIXED_RATIO = 1 ether; // 100%

    // Redeeming min/max settings
    uint256 public minRedeemRatio = MAX_FIXED_RATIO / 2; // 1:0.5 precision is 1**18
    uint256 public maxRedeemRatio = MAX_FIXED_RATIO; // 1:1 precision is 1**18
    uint256 public minRedeemDuration = 15 days;
    uint256 public maxRedeemDuration = 90 days;
    // Adjusted dividends rewards for redeeming xSYNTH
    uint256 public redeemDividendsAdjustment = MAX_FIXED_RATIO / 2; // 50% precision is 1**18
    uint256 public maxRedeemDurationDividendAdjust = 750000000000000000; // 75% precision is 1**18

    address internal constant BURN_ADDRESS =
        0x000000000000000000000000000000000000dEaD;

    mapping(address => XSynthBalance) public xSynthBalances; // User's xSYNTH balances
    mapping(address => RedeemInfo[]) public userRedeems; // User's redeeming instances

    constructor(ISynthTokenV2 _synthToken) {
        synthToken = _synthToken;
        _transferWhitelist.add(address(this));
    }

    /********************************************/
    /****************** EVENTS ******************/
    /********************************************/

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
        uint256 redeemDividendsAdjustment
    );
    event UpdateDividendsAddress(
        address previousDividendsAddress,
        address newDividendsAddress
    );
    event UpdateDeallocationFee(address indexed usageAddress, uint256 fee);
    event SetTransferWhitelist(address account, bool add);
    event Redeem(
        address indexed userAddress,
        uint256 xSynthAmount,
        uint256 synthAmount,
        uint256 duration
    );
    event FinalizeRedeem(
        address indexed userAddress,
        uint256 xSynthAmount,
        uint256 synthAmount
    );
    event CancelRedeem(address indexed userAddress, uint256 xSynthAmount);
    event UpdateRedeemDividendsAddress(
        address indexed userAddress,
        uint256 redeemIndex,
        address previousDividendsAddress,
        address newDividendsAddress
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
     * @dev Returns user's xSYNTH balances
     */
    function getXSynthBalance(
        address userAddress
    ) external view returns (uint256 allocatedAmount, uint256 redeemingAmount) {
        XSynthBalance storage balance = xSynthBalances[userAddress];
        return (balance.allocatedAmount, balance.redeemingAmount);
    }

    /*
     * @dev returns redeemable SYNTH for "amount" of xSYNTH vested for "duration" seconds
     */
    function getSynthByVestingDuration(
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
            uint256 synthAmount,
            uint256 xSynthAmount,
            uint256 endTime,
            uint256 startTime,
            address dividendsContract,
            uint256 dividendsAllocation
        )
    {
        RedeemInfo storage _redeem = userRedeems[userAddress][redeemIndex];
        return (
            _redeem.synthAmount,
            _redeem.xSynthAmount,
            _redeem.endTime,
            _redeem.startTime,
            address(_redeem.dividendsAddress),
            _redeem.dividendsAllocation
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
     * @dev returns if "account" is allowed to send/receive xSYNTH
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
        uint256 redeemDividendsAdjustment_
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
                redeemDividendsAdjustment_ <= MAX_FIXED_RATIO,
            "updateRedeemSettings: wrong ratio values"
        );

        minRedeemRatio = minRedeemRatio_;
        maxRedeemRatio = maxRedeemRatio_;
        minRedeemDuration = minRedeemDuration_;
        maxRedeemDuration = maxRedeemDuration_;
        redeemDividendsAdjustment = redeemDividendsAdjustment_;

        emit UpdateRedeemSettings(
            minRedeemRatio_,
            maxRedeemRatio_,
            minRedeemDuration_,
            maxRedeemDuration_,
            redeemDividendsAdjustment_
        );
    }

    /**
     * @dev Updates redeemDividendsAdjustment
     *
     * Must only be called by owner
     */
    function updateRedeemDividendsAdjustment(
        uint256 redeemDividendsAdjustment_
    ) external onlyOwner {
        require(
            redeemDividendsAdjustment_ <= MAX_FIXED_RATIO,
            "updateRedeemSettings: wrong ratio values"
        );

        redeemDividendsAdjustment = redeemDividendsAdjustment_;
    }

    function updateMaxDurationRedeemDividendsAdjst(
        uint256 _maxRedeemDurationDividendAdjust
    ) external onlyOwner {
        require(
            _maxRedeemDurationDividendAdjust <= MAX_FIXED_RATIO,
            "updateRedeemSettings: wrong ratio values"
        );

        maxRedeemDurationDividendAdjust = _maxRedeemDurationDividendAdjust;
    }

    /**
     * @dev Updates dividends contract address
     *
     * Must only be called by owner
     */
    function updateDividendsAddress(
        IXSynthTokenUsage dividendsAddress_
    ) external onlyOwner {
        // if set to 0, also set divs earnings while redeeming to 0
        if (address(dividendsAddress_) == address(0)) {
            redeemDividendsAdjustment = 0;
        }

        emit UpdateDividendsAddress(
            address(dividendsAddress),
            address(dividendsAddress_)
        );
        dividendsAddress = dividendsAddress_;
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
     * @dev Approves "usage" address to get allocations up to "amount" of xSYNTH from msg.sender
     */
    function approveUsage(
        IXSynthTokenUsage usage,
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
     * @dev Convert caller's "amount" of SYNTH to xSYNTH
     */
    function convert(uint256 amount) external nonReentrant {
        _convert(amount, msg.sender);
    }

    /**
     * @dev Convert caller's "amount" of SYNTH to xSYNTH to "to" address
     */
    function convertTo(
        uint256 amount,
        address to
    ) external override nonReentrant {
        require(address(msg.sender).isContract(), "convertTo: not allowed");
        _convert(amount, to);
    }

    /**
     * @dev Initiates redeem process (xSYNTH to SYNTH)
     *
     * Handles dividends' compensation allocation during the vesting process if needed
     */
    function redeem(
        uint256 xSynthAmount,
        uint256 duration
    ) external nonReentrant {
        require(xSynthAmount > 0, "redeem: xSynthAmount cannot be null");
        require(duration >= minRedeemDuration, "redeem: duration too low");

        _transfer(msg.sender, address(this), xSynthAmount);
        XSynthBalance storage balance = xSynthBalances[msg.sender];

        // get corresponding SYNTH amount
        uint256 synthAmount = getSynthByVestingDuration(xSynthAmount, duration);
        emit Redeem(msg.sender, xSynthAmount, synthAmount, duration);

        // if redeeming is not immediate, go through vesting process
        if (duration > 0) {
            balance.redeemingAmount += xSynthAmount;

            // handle dividends during the vesting process
            uint256 dividendsAllocation = (xSynthAmount *
                (
                    duration == maxRedeemDuration
                        ? maxRedeemDurationDividendAdjust
                        : redeemDividendsAdjustment
                )) / MAX_FIXED_RATIO;

            // only if compensation is active
            if (dividendsAllocation > 0) {
                // allocate to dividends
                dividendsAddress.allocate(
                    msg.sender,
                    dividendsAllocation,
                    new bytes(0)
                );
            }

            // add redeeming entry
            userRedeems[msg.sender].push(
                RedeemInfo(
                    synthAmount,
                    xSynthAmount,
                    _currentBlockTimestamp() + duration,
                    _currentBlockTimestamp(),
                    dividendsAddress,
                    dividendsAllocation
                )
            );
        } else {
            // immediately redeem for SYNTH
            _finalizeRedeem(msg.sender, xSynthAmount, synthAmount);
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
        XSynthBalance storage balance = xSynthBalances[msg.sender];
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];
        require(
            _currentBlockTimestamp() >= _redeem.startTime + minRedeemDuration,
            "finalizeRedeem: min duration before redeem"
        );

        // remove from SBT total
        balance.redeemingAmount -= _redeem.xSynthAmount;

        uint256 duration = _currentBlockTimestamp() - _redeem.startTime;
        uint256 synthAmount = getSynthByVestingDuration(
            _redeem.xSynthAmount,
            duration
        );
        _finalizeRedeem(msg.sender, _redeem.xSynthAmount, synthAmount);

        // handle dividends compensation if any was active
        if (_redeem.dividendsAllocation > 0) {
            // deallocate from dividends
            IXSynthTokenUsage(_redeem.dividendsAddress).deallocate(
                msg.sender,
                _redeem.dividendsAllocation,
                new bytes(0)
            );
        }

        // remove redeem entry
        _deleteRedeemEntry(redeemIndex);
    }

    /**
     * @dev Updates dividends address for an existing active redeeming process
     *
     * Can only be called by the involved user
     * Should only be used if dividends contract was to be migrated
     */
    function updateRedeemDividendsAddress(
        uint256 redeemIndex
    ) external nonReentrant validateRedeem(msg.sender, redeemIndex) {
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];

        // only if the active dividends contract is not the same anymore
        if (
            dividendsAddress != _redeem.dividendsAddress &&
            address(dividendsAddress) != address(0)
        ) {
            if (_redeem.dividendsAllocation > 0) {
                // deallocate from old dividends contract
                _redeem.dividendsAddress.deallocate(
                    msg.sender,
                    _redeem.dividendsAllocation,
                    new bytes(0)
                );
                // allocate to new used dividends contract
                dividendsAddress.allocate(
                    msg.sender,
                    _redeem.dividendsAllocation,
                    new bytes(0)
                );
            }

            emit UpdateRedeemDividendsAddress(
                msg.sender,
                redeemIndex,
                address(_redeem.dividendsAddress),
                address(dividendsAddress)
            );
            _redeem.dividendsAddress = dividendsAddress;
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
        XSynthBalance storage balance = xSynthBalances[msg.sender];
        RedeemInfo storage _redeem = userRedeems[msg.sender][redeemIndex];

        // make redeeming xSYNTH available again
        balance.redeemingAmount -= _redeem.xSynthAmount;

        _transfer(address(this), msg.sender, _redeem.xSynthAmount);

        // handle dividends compensation if any was active
        if (_redeem.dividendsAllocation > 0) {
            // deallocate from dividends
            IXSynthTokenUsage(_redeem.dividendsAddress).deallocate(
                msg.sender,
                _redeem.dividendsAllocation,
                new bytes(0)
            );
        }

        emit CancelRedeem(msg.sender, _redeem.xSynthAmount);

        // remove redeem entry
        _deleteRedeemEntry(redeemIndex);
    }

    /**
     * @dev Allocates caller's "amount" of available xSYNTH to "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function allocate(
        address usageAddress,
        uint256 amount,
        bytes calldata usageData
    ) external nonReentrant {
        _allocate(msg.sender, usageAddress, amount);

        // allocates xSYNTH to usageContract
        IXSynthTokenUsage(usageAddress).allocate(msg.sender, amount, usageData);
    }

    /**
     * @dev Allocates "amount" of available xSYNTH from "userAddress" to caller (ie usage contract)
     *
     * Caller must have an allocation approval for the required xToken xSYNTH from "userAddress"
     */
    function allocateFromUsage(
        address userAddress,
        uint256 amount
    ) external override nonReentrant {
        _allocate(userAddress, msg.sender, amount);
    }

    /**
     * @dev Deallocates caller's "amount" of available xSYNTH from "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function deallocate(
        address usageAddress,
        uint256 amount,
        bytes calldata usageData
    ) external nonReentrant {
        _deallocate(msg.sender, usageAddress, amount);

        // deallocate xSYNTH into usageContract
        IXSynthTokenUsage(usageAddress).deallocate(
            msg.sender,
            amount,
            usageData
        );
    }

    /**
     * @dev Deallocates "amount" of allocated xSYNTH belonging to "userAddress" from caller (ie usage contract)
     *
     * Caller can only deallocate xSYNTH from itself
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
     * @dev Convert caller's "amount" of SYNTH into xSYNTH to "to"
     */
    function _convert(uint256 amount, address to) internal {
        require(amount != 0, "convert: amount cannot be null");

        // mint new xSYNTH
        _mint(to, amount);

        emit Convert(msg.sender, to, amount);
        synthToken.safeTransferFrom(msg.sender, address(this), amount);
    }

    /**
     * @dev Finalizes the redeeming process for "userAddress" by transferring him "synthAmount" and removing "xSynthAmount" from supply
     *
     * Any vesting check should be ran before calling this
     * SYNTH excess is automatically burnt
     */
    function _finalizeRedeem(
        address userAddress,
        uint256 xSynthAmount,
        uint256 synthAmount
    ) internal {
        uint256 synthExcess = xSynthAmount - synthAmount;

        // sends due SYNTH tokens
        synthToken.safeTransfer(userAddress, synthAmount);

        // burns SYNTH excess if any
        if (synthExcess > 0) {
            synthToken.safeTransfer(BURN_ADDRESS, synthExcess);
        }

        _burn(address(this), xSynthAmount);

        emit FinalizeRedeem(userAddress, xSynthAmount, synthAmount);
    }

    /**
     * @dev Allocates "userAddress" user's "amount" of available xSYNTH to "usageAddress" contract
     *
     */
    function _allocate(
        address userAddress,
        address usageAddress,
        uint256 amount
    ) internal {
        require(amount > 0, "allocate: amount cannot be null");

        XSynthBalance storage balance = xSynthBalances[userAddress];

        // approval checks if allocation request amount has been approved by userAddress to be allocated to this usageAddress
        uint256 approvedXSynth = usageApprovals[userAddress][usageAddress];
        require(approvedXSynth >= amount, "allocate: non authorized amount");

        // remove allocated amount from usage's approved amount
        usageApprovals[userAddress][usageAddress] = approvedXSynth - amount;

        // update usage's allocatedAmount for userAddress
        usageAllocations[userAddress][usageAddress] =
            usageAllocations[userAddress][usageAddress] +
            amount;

        // adjust user's xSYNTH balances
        balance.allocatedAmount = balance.allocatedAmount + amount;
        _transfer(userAddress, address(this), amount);

        emit Allocate(userAddress, usageAddress, amount);
    }

    /**
     * @dev Deallocates "amount" of available xSYNTH to "usageAddress" contract
     *
     * args specific to usage contract must be passed into "usageData"
     */
    function _deallocate(
        address userAddress,
        address usageAddress,
        uint256 amount
    ) internal {
        require(amount > 0, "deallocate: amount cannot be null");

        // check if there is enough allocated xSYNTH to this usage to deallocate
        uint256 allocatedAmount = usageAllocations[userAddress][usageAddress];
        require(allocatedAmount >= amount, "deallocate: non authorized amount");

        // remove deallocated amount from usage's allocation
        usageAllocations[userAddress][usageAddress] = allocatedAmount - amount;

        uint256 deallocationFeeAmount = (amount *
            usagesDeallocationFee[usageAddress]) / 10000;

        // adjust user's xSYNTH balances
        XSynthBalance storage balance = xSynthBalances[userAddress];
        balance.allocatedAmount -= amount;

        _transfer(address(this), userAddress, amount - deallocationFeeAmount);
        // burn corresponding SYNTH and XSYNTH
        if (deallocationFeeAmount > 0) {
            synthToken.safeTransfer(BURN_ADDRESS, deallocationFeeAmount);
            _burn(address(this), deallocationFeeAmount);
        }
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
