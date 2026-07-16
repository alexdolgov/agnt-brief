// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

// veNFT interface (Thena-style)
interface IVeNFT is IERC721 {
    // NOTE: split takes proportional weights, burns _tokenId, mints N to owner
    function split(uint[] calldata amounts, uint256 _tokenId) external;
    // exposes underlying locked amount and end
    function locked(
        uint256 id
    ) external view returns (int128 amount, uint256 end);
    function tokenOfOwnerByIndex(
        address owner,
        uint256 index
    ) external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256);
    function balanceOfNFT(uint _id) external view returns (uint);
}
/// Purpose of this contract is to allow people to claim their abacus tokens' underlying ve position after the snapshot
contract VeClaim is Ownable, ReentrancyGuard {
    uint256 public totalCounter;
    uint256 public totalClaimed;
    uint256 public masterID; // changes every interaction on THENA/LYNEX
    bool public closed;

    IVeNFT public veNFT;

    event Claimed(address indexed user, uint256 amount);

    mapping(address => uint256) public userClaimable;

    modifier check() {
        /// @dev check if the veNFT is initialized
        require(address(veNFT) != address(0), "veNFT not initialized");
        /// @dev check if the airdrop is closed
        require(!closed, "closed");
        _;
    }

    constructor(address _owner) Ownable(_owner) {
        closed = true;
    }

    function claimAllocation() external check nonReentrant {
        /// @dev fetch the claimable amount for the user
        uint256 claimable = userClaimable[msg.sender];
        /// @dev check if the user has any allocation
        require(claimable > 0, "no allocation");
        /// @dev reset the claimable amount for the user
        userClaimable[msg.sender] = 0;
        /// @dev increment the total claimed amount
        totalClaimed += claimable;
        /// @dev split off and transfer the veNFT to the user
        _splitNftAndSendToVictim(msg.sender, claimable);
        /// @dev emit the claimed event
        emit Claimed(msg.sender, claimable);
    }

    function setVe(address _veNFT, uint256 _tokenID) external onlyOwner {
        /// @dev check if the veNFT address is already set to prevent any issues
        require(address(veNFT) == address(0), "veNFT already set");
        veNFT = IVeNFT(_veNFT);
        /// @dev sanity check
        require(veNFT.ownerOf(_tokenID) == address(this), "put veNFT in first");
        masterID = _tokenID;
    }

    /// @dev rescue function to rescue any tokens that are sent to the contract unintentionally
    function rescue(
        address _token,
        address _to,
        uint256 _amount
    ) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }

    /// @dev rescue the veNFT
    function rescueNFT(uint256 _tokenID) external onlyOwner {
        veNFT.transferFrom(address(this), owner(), _tokenID);
    }

    /// @dev fill the mapping
    function populate(
        address[] calldata _users,
        uint256[] calldata _veAllocation
    ) external onlyOwner {
        require(_users.length == _veAllocation.length, "length mismatch");
        for (uint256 i; i < _users.length; ++i) {
            /// @dev check if the address is already included, as there are no double-claims
            require(userClaimable[_users[i]] == 0, "already populated");
            userClaimable[_users[i]] = _veAllocation[i];
            totalCounter += _veAllocation[i];
        }
    }

    function open() external onlyOwner {
        closed = false;
    }
    function close() external onlyOwner {
        closed = true;
    }

    /// @dev backstop
    function safetyNet(address x, bytes calldata _x) external onlyOwner {
        (bool success, ) = x.call(_x);
        require(success);
    }

    /// @dev internal function to make this contract be compatible

    function _splitNftAndSendToVictim(address _to, uint256 _toSplit) internal {
        /// THENA/LYNEX splitting (absolute atrocity of code btw)

        /// @dev check how many NFTs exist in the wallet
        uint256 _totalNftBefore = veNFT.balanceOf(address(this));
        /// @dev check the ********ACTUAL BALANCE******** of the master NFT
        (int128 _totalBalance, ) = veNFT.locked(masterID);
        /// @dev convert to uint256 respecting the sign casting even though it really isn't possible
        uint256 totalBal = uint256(int256(_totalBalance));
        /// @dev subtract from the amount requested
        uint256 _totalBalanceAfter = totalBal - _toSplit;
        /// @dev establish an array of length 2 with the total new master NFT amount, and the other with the expected split amount
        uint256[] memory _amounts = new uint[](2);
        _amounts[0] = _totalBalanceAfter;
        _amounts[1] = _toSplit;

        /// @dev call the split function with the array + the master NFT ID
        veNFT.split(_amounts, masterID);

        /// @dev check the new balance of veNFTs in this address
        uint256 _totalNftAfter = veNFT.balanceOf(address(this));
        /// @dev it should create a new NFT so bal should be + 1
        require(_totalNftAfter == _totalNftBefore + 1, "Failed split.");

        /// @dev uses the index to determine the indices of the two NFTs
        uint256 _tokenId1 = veNFT.tokenOfOwnerByIndex(
            address(this),
            _totalNftAfter - 1
        );
        uint256 _tokenId0 = veNFT.tokenOfOwnerByIndex(
            address(this),
            _totalNftAfter - 2
        );

        /// @dev assigns the masterID to the 2 ids prior to current
        masterID = _tokenId0;
        /// @dev transfer the veNFT to the user
        veNFT.transferFrom(address(this), _to, _tokenId1);
    }
}
