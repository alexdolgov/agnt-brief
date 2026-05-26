// SPDX-License-Identifier: gpl-3.0
pragma solidity ^0.8.0;
pragma abicoder v2;

import "./external/openzeppelin/contracts/access/Ownable.sol";
import "./external/openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IAirdrop.sol";

/// @title  Airdrop Token Distributor
/// @notice Holds tokens for users to claim.
/// @dev    Unlike a merkle distributor this contract uses storage to record claims rather than a
///         merkle root.
///         After construction do the following
///         1. transfer tokens to this contract
///         2. setRecipients - called as many times as required to set all the recipients
///         3. transferOwnership - the ownership of the contract should be transferred to a new owner (eg DAO) after all recipients have been set
contract Airdrop is Ownable, IAirdrop {
    IERC20 public immutable override airdropToken;
    mapping(address => uint256) public override balanceOf;
    mapping(address => uint) public claimed;

    /// @notice Total amount of tokens claimable by recipients of this contract
    uint256 public totalClaimable;

    /// @notice Total amount of tokens claimed by recipients of this contract
    uint256 public totalClaimed;

    /// @notice Block number at which claiming starts
    uint256 public immutable claimPeriodStart;
    /// @notice Block number at which claiming ends
    uint256 public immutable claimPeriodEnd;

    /// @notice Address to receive tokens that were not claimed after claimPeriodEnd
    address payable public sweepReceiver;

    modifier InClaimablePeriod() {
        require(claimPeriodStart <= block.timestamp, "claim not started");
        require(claimPeriodEnd >= block.timestamp, "claim already ended");

        _;
    }

    constructor(
        address _airdropToken,
        uint256 _claimPeriodStart,
        uint256 _claimPeriodEnd
    ) {
        airdropToken = IERC20(_airdropToken);
        claimPeriodStart = _claimPeriodStart;
        claimPeriodEnd = _claimPeriodEnd;
    }

    function setAirdropList(
        address[] calldata _userAddresses,
        uint256[] calldata _userBalance
    ) public onlyOwner {
        require(
            _userAddresses.length == _userBalance.length,
            "length is not equal"
        );
        uint256 sum = 0;
        for (uint i; i < _userAddresses.length; i++) {
            require(
                balanceOf[_userAddresses[i]] == 0,
                "already set airdrop balance"
            );
            balanceOf[_userAddresses[i]] = _userBalance[i];
            sum += _userBalance[i];

            emit AirdropClaimable(_userAddresses[i], _userBalance[i]);
        }

        totalClaimable += sum;

        require(
            airdropToken.balanceOf(address(this)) >= totalClaimable,
            "token not enough"
        );

        emit AirdropSet(_userAddresses.length, sum);
    }

    /// @notice Claim tokens
    function claim() public InClaimablePeriod {
        uint256 amount = balanceOf[msg.sender];

        require(amount > 0, "no airdrop");
        require(claimed[msg.sender] != 1, "claimed");

        totalClaimed += amount;
        claimed[msg.sender] = 1;

        require(airdropToken.transfer(msg.sender, amount), "claim failed");

        emit AirdropClaimed(msg.sender, amount);
    }

    /// @notice Allows owner to update address of sweep receiver
    function setSweepReciever(
        address payable _sweepReceiver
    ) external onlyOwner {
        _setSweepReciever(_sweepReceiver);
    }

    function _setSweepReciever(address payable _sweepReceiver) internal {
        require(_sweepReceiver != address(0), "zero sweep receiver address");
        sweepReceiver = _sweepReceiver;
        emit SweepReceiverSet(_sweepReceiver);
    }

    /// @notice Allows owner of the contract to withdraw tokens
    /// @dev A safety measure in case something goes wrong with the distribution
    function withdraw(uint256 amount) external onlyOwner {
        require(
            airdropToken.transfer(msg.sender, amount),
            "fail transfer token"
        );
        emit Withdrawal(msg.sender, amount);
    }

    /// @notice Sends any unclaimed funds to the sweep reciever once the claiming period is over
    function sweep() external {
        require(block.timestamp > claimPeriodEnd, "not ended");
        uint256 leftovers = airdropToken.balanceOf(address(this));
        require(leftovers != 0, "no leftovers");
        require(sweepReceiver != address(0), "zero sweep receiver address");

        require(
            airdropToken.transfer(sweepReceiver, leftovers),
            "fail token transfer"
        );

        emit Swept(leftovers);
    }
}
