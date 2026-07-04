// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface IFFixedSale {
    function totalPurchased(address user) external view returns (uint256);

    function totalPaymentReceived() external view returns (uint256);

    function salePrice() external view returns (uint256);
}

interface ICheckerNFT {
    function mint(address to, uint256 amount) external;
}

contract CheckerNFTClaim is Ownable2Step, Pausable, ReentrancyGuard {
    address public adminAddress;
    address public checkerNftAddress;
    address[] private _saleContractsArray;
    mapping(address => bool) internal _claimBlacklist;
    mapping(address => uint256) public totalNftClaimed;

    event EventAdminUpdated(address newAdmin);
    event EventClaim(address user, uint256 amount);

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "only admin");
        _;
    }

    constructor(address checkerNft) {
        checkerNftAddress = checkerNft;
        adminAddress = msg.sender;
        _pause();
    }

    function updateAdmin(address admin) public onlyOwner {
        adminAddress = admin;
        emit EventAdminUpdated(admin);
    }

    function updateSaleContractsArray(
        address[] memory saleContracts
    ) public onlyOwner {
        _saleContractsArray = saleContracts;
    }

    function getSaleContractsArray() public view returns (address[] memory) {
        return _saleContractsArray;
    }

    function totalNftPurchased(address user) public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < _saleContractsArray.length; i++) {
            total += IFFixedSale(_saleContractsArray[i]).totalPurchased(user);
        }
        return total / 1e18;
    }

    function totalSaleTokensSold() public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < _saleContractsArray.length; i++) {
            uint256 salePrice = IFFixedSale(_saleContractsArray[i]).salePrice();
            uint256 totalPaymentReceived = IFFixedSale(_saleContractsArray[i])
                .totalPaymentReceived();
            uint256 totalTokensSold = 0;
            if (salePrice == 0) {
                totalTokensSold = 0;
            } else {
                totalTokensSold = (totalPaymentReceived * 1e18) / salePrice;
            }
            total += totalTokensSold;
        }
        return total / 1e18;
    }

    function unClaimedNftCount(address user) public view returns (uint256) {
        return totalNftPurchased(user) - totalNftClaimed[user];
    }

    function batchUnClaimedNftCount(address[] calldata userArray) public view returns (uint256[] memory) {
        uint256[] memory result = new uint256[](userArray.length);
        for (uint256 i = 0; i < userArray.length; i++) {
            result[i] = unClaimedNftCount(userArray[i]);
        }
        return result;
    }

    function batchClaimedNftCount(address[] calldata userArray) public view returns (uint256[] memory) {
        uint256[] memory result = new uint256[](userArray.length);
        for (uint256 i = 0; i < userArray.length; i++) {
            result[i] = totalNftClaimed[userArray[i]];
        }
        return result;
    }

    function claimAll() public whenNotPaused nonReentrant {
        require(!_claimBlacklist[msg.sender], "blacklisted user");
        _claimAll(msg.sender);
    }

    function claim(uint256 amount) public whenNotPaused nonReentrant {
        require(!_claimBlacklist[msg.sender], "blacklisted user");
        _claim(msg.sender, amount);
    }

    function _claim(address user, uint256 amount) internal {
        require(amount > 0, "amount should be greater than 0");
        require(
            amount <= unClaimedNftCount(user),
            "amount should be less than unclaimed nft count"
        );
        totalNftClaimed[user] += amount;

        
        ICheckerNFT(checkerNftAddress).mint(user,amount);
        

        emit EventClaim(user, amount);
    }

    function _claimAll(address user) internal {
        uint256 amount = unClaimedNftCount(user);
        if (amount == 0) {
            return;
        }

        totalNftClaimed[user] += amount;

        ICheckerNFT(checkerNftAddress).mint(user,amount);

        emit EventClaim(user, amount);
    }

    function adminClaim(address user, uint256 amount) public onlyAdmin {
        _claim(user, amount);
    }

    function inBlacklist(address user) public view returns (bool) {
        return _claimBlacklist[user];
    }

    function updateBlacklist(address user, bool val) public onlyAdmin {
        _claimBlacklist[user] = val;
    }

    function adminBatchClaim(
        address[] calldata userArray,
        uint256[] calldata amountArray
    ) public onlyAdmin {
        require(
            userArray.length == amountArray.length,
            "array length should be same"
        );
        for (uint256 i = 0; i < userArray.length; i++) {
            _claim(userArray[i], amountArray[i]);
        }
    }

    function adminBatchClaimAll(address[] calldata userArray) public onlyAdmin {
        for (uint256 i = 0; i < userArray.length; i++) {
            _claimAll(userArray[i]);
        }
    }

    function pause() public onlyAdmin {
        _pause();
    }

    function unpause() public onlyAdmin {
        _unpause();
    }
}
