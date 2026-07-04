// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.16;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be aplied to your functions to restrict their use to
 * the owner.
 */
contract Ownable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Returns true if the caller is the current owner.
     */
    function isOwner() public view returns (bool) {
        return msg.sender == _owner;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * > Note: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

import "./StakingRewards.sol";

interface IBaseToken {
    function mint(address recipient_, uint256 amount_) external returns (bool);
}

interface ISingleStaking {
    function balanceOf(address account) external view returns (uint256);
}

/* MADE BY KELL */

contract MasterChefCoinMinter is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    mapping(address => bool) public minters;

    modifier onlyRewardsMinter() {
        require(minters[msg.sender] == true, "Only minters allowed");
        _;
    }

    constructor(
    ) Ownable() public {
    }

    // notify reward amount for an individual staking token.
    function mintRewardsByAddress(address _receiver, uint256 _amount, address _token) public onlyRewardsMinter {
        require(
            IBaseToken(_token).mint(address(this), _amount), 'MasterChef: mint rewardsToken failed'
        );
        IERC20(_token).safeTransferFrom(address(this), _receiver, _amount);
    }

    function setMinters(address _minter, bool _canMint) public onlyOwner {
        minters[_minter] = _canMint;
    }
}