//SPDX-License-Identifier: MIT
//               _    _____                                        _
// __      _____| |__|___ / _ __   __ _ _   _ _ __ ___   ___ _ __ | |_ ___
// \ \ /\ / / _ \ '_ \ |_ \| '_ \ / _` | | | | '_ ` _ \ / _ \ '_ \| __/ __|
//  \ V  V /  __/ |_) |__) | |_) | (_| | |_| | | | | | |  __/ | | | |_\__ \
//   \_/\_/ \___|_.__/____/| .__/ \__,_|\__, |_| |_| |_|\___|_| |_|\__|___/
//                         |_|          |___/
//
pragma solidity 0.8.9;
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

contract PresaleNewClaimsV2 is Initializable, ReentrancyGuardUpgradeable, OwnableUpgradeable, PausableUpgradeable {
  uint256 public claimStart;
  address public saleToken;

  mapping(address => uint256) public userDeposits;
  mapping(address => bool) public hasClaimed;
  mapping(address => bool) public isBlacklisted;
  mapping(address => bool) public isWhitelisted;

  event TokensClaimed(address indexed user, uint256 amount, uint256 timestamp);
  event ClaimStartUpdated(uint256 prevValue, uint256 newValue, uint256 timestamp);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  /**
   * @dev To pause the presale
   */
  function pause() external onlyOwner {
    _pause();
  }

  /**
   * @dev To unpause the presale
   */
  function unpause() external onlyOwner {
    _unpause();
  }

  /**
   * @dev To change the claim start time by the owner
   * @param _claimStart new claim start time
   */
  function changeClaimStart(uint256 _claimStart) external onlyOwner returns (bool) {
    uint256 prevValue = claimStart;
    claimStart = _claimStart;
    emit ClaimStartUpdated(prevValue, _claimStart, block.timestamp);
    return true;
  }

  function setSaleToken(address _saleToken) external onlyOwner returns (bool) {
    require(_saleToken != address(0), "Zero token address");
    saleToken = _saleToken;
    return true;
  }

  /**
   * @dev To claim tokens after claiming starts
   */
  function claim() external whenNotPaused returns (bool) {
    require(saleToken != address(0), "Sale token not added");
    require(!isBlacklisted[_msgSender()], "This Address is Blacklisted");
    require((claimStart > 0 && block.timestamp >= claimStart) || isWhitelisted[_msgSender()], "Claim has not started yet");
    require(!hasClaimed[_msgSender()], "Already claimed");
    hasClaimed[_msgSender()] = true;
    uint256 amount = userDeposits[_msgSender()];
    require(amount > 0, "Nothing to claim");
    delete userDeposits[_msgSender()];
    bool success = IERC20Upgradeable(saleToken).transfer(_msgSender(), amount);
    require(success, "Token transfer failed");
    emit TokensClaimed(_msgSender(), amount, block.timestamp);
    return true;
  }

  /**
   * @dev To add users to blacklist which restricts blacklisted users from claiming
   * @param _blacklistStatus true for blacklisting, false to remove from blacklist
   * @param _usersToBlacklist addresses of the users
   */
  function blacklistUsers(bool _blacklistStatus, address[] calldata _usersToBlacklist) external onlyOwner {
    for (uint256 i = 0; i < _usersToBlacklist.length; i++) {
      isBlacklisted[_usersToBlacklist[i]] = _blacklistStatus;
    }
  }

  /**
   * @dev To add users to whitelist which restricts users from claiming if claimWhitelistStatus is true
   * @param _whitelistStatus true for whitelisting, false to remove from whitelist
   * @param _usersToWhitelist addresses of the users
   */
  function whitelistUsers(bool _whitelistStatus, address[] calldata _usersToWhitelist) external onlyOwner {
    for (uint256 i = 0; i < _usersToWhitelist.length; i++) {
      isWhitelisted[_usersToWhitelist[i]] = _whitelistStatus;
    }
  }

  /**
   * @dev to update userDeposits for purchases made on BSC
   * @param _users array of users
   * @param _userDeposits array of userDeposits associated with users
   */
  function userSeeder(address[] calldata _users, uint256[] calldata _userDeposits) external onlyOwner {
    require(_users.length == _userDeposits.length, "Length mismatch");
    for (uint256 i = 0; i < _users.length; i++) {
      userDeposits[_users[i]] += _userDeposits[i];
    }
  }

  function updateClaimsStatus(address[] calldata _users, bool _status) external onlyOwner {
    for (uint256 i = 0; i < _users.length; i++) {
      hasClaimed[_users[i]] = _status;
    }
  }
}
