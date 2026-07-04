// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)
/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)
/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


contract TreasuryVester is Ownable {
    address public tokenThatIsVesting = 0x486C3fb721c7faA426D4E68D7769b4427F86a7d9;
    address[] public recipient;

    uint256[] public vestingAmount; // totalTokensVesting
    uint256[] public claimedAmount; // totalTokensVesting
    uint256[] public vestingBegin; // vesting start timestamp
    uint256[] public vestingCliff; // vesting start allowed claim timestamp
    uint256[] public vestingEnd; // vesting end timestamp

    uint256[] public lastUpdate;
    uint256[] public lastClaimBlock;

    bool public paused = false;

    event VestingVaultAdded(uint256 indexed vaultId, address recipient, uint256 vestingAmount, uint256 vestingBegin);
    event Claimed(uint256 indexed vaultId, address recipient, uint256 amount);


    function addVestingVault(
        address recipient_,
        uint256 vestingAmount_,
        uint256 vestingBegin_
    ) public onlyOwner
    {
        require(vestingBegin_ >= block.timestamp, 'TreasuryVester::constructor: vesting begin too early');

        recipient.push(recipient_);

        vestingAmount.push(vestingAmount_);
        claimedAmount.push(0);
        vestingBegin.push(vestingBegin_);
        vestingCliff.push(vestingBegin_ + 1 hours);
        vestingEnd.push(vestingBegin_ + 90 days);

        lastUpdate.push(vestingBegin_);
        lastClaimBlock.push(block.number);

        emit VestingVaultAdded(recipient.length - 1, recipient_, vestingAmount_, vestingBegin_);
    }

        function addMultipleVestingVaults(
        address[] memory recipients_,
        uint256[] memory vestingAmounts_,
        uint256[] memory vestingBegins_
    ) public onlyOwner {
        require(recipients_.length == vestingAmounts_.length && recipients_.length == vestingBegins_.length, "TreasuryVester::addMultipleVestingVaults: Array lengths must match");

        for (uint256 i = 0; i < recipients_.length; i++) {
            require(vestingBegins_[i] >= block.timestamp, "TreasuryVester::addMultipleVestingVaults: Vesting begin too early");
            recipient.push(recipients_[i]);
            vestingAmount.push(vestingAmounts_[i]);
            claimedAmount.push(0);
            vestingBegin.push(vestingBegins_[i]);
            vestingCliff.push(vestingBegins_[i] + 1 hours);
            vestingEnd.push(vestingBegins_[i] + 90 days);
            lastUpdate.push(vestingBegins_[i]);
            lastClaimBlock.push(block.number);

            emit VestingVaultAdded(recipient.length - 1, recipients_[i], vestingAmounts_[i], vestingBegins_[i]);
        }
    }

    function setPaused(bool _status) external onlyOwner {
        paused = _status;
    }

    function setRecipient(uint256 vaultId_, address recipient_) public {
        require(msg.sender == recipient[vaultId_], 'TreasuryVester::setRecipient: unauthorized');
        recipient[vaultId_] = recipient_;
    }

    function claim(uint256 vaultId_) public {
        require(paused == false, "Paused");
        require(lastClaimBlock[vaultId_] < block.number, "TreasuryVester: already claimed this block");
        require(msg.sender == recipient[vaultId_], 'TreasuryVester::setRecipient: unauthorized');
        require(block.timestamp >= vestingCliff[vaultId_], 'TreasuryVester::claim: not time yet');
        uint256 amount;
        if (block.timestamp >= vestingEnd[vaultId_]) {
            amount = vestingAmount[vaultId_] - claimedAmount[vaultId_];
        } else {
            amount = vestingAmount[vaultId_] * (block.timestamp - lastUpdate[vaultId_]) / (vestingEnd[vaultId_] - vestingBegin[vaultId_]);
            lastUpdate[vaultId_] = block.timestamp;
        }
        claimedAmount[vaultId_] += amount; 
        lastClaimBlock[vaultId_] = block.number;
        IERC20(tokenThatIsVesting).transfer(recipient[vaultId_], amount);

        emit Claimed(vaultId_, recipient[vaultId_], amount);
    }
}

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
}