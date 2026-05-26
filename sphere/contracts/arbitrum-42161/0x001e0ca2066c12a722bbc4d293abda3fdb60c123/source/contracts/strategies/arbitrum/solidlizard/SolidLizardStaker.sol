// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

import "./ISolidLizardVoter.sol";
import "./IVeSLIZ.sol";
import "./DySLIZManager.sol";

interface ISolidLizardBoostedStrategy {
  function want() external view returns (IERC20Upgradeable);

  function gauge() external view returns (address);
}

interface IVeDist {
  function claim(uint256 tokenId) external returns (uint256);
}

interface IGauge {
  function getReward(address user, address[] calldata tokens) external;

  function getReward(uint256 id, address[] calldata tokens) external;

  function deposit(uint256 amount, uint256 tokenId) external;

  function withdraw(uint256 amount) external;

  function balanceOf(address user) external view returns (uint256);
}

contract SolidLizardStaker is DySLIZManager, ReentrancyGuardUpgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  // Addresses used
  ISolidLizardVoter public solidVoter;
  IVeSLIZ public veToken;
  IVeDist public veDist;
  uint256 public veTokenId;
  IERC20Upgradeable public want;
  address public treasury;

  // Strategy mapping
  mapping(address => address) public whitelistedStrategy;
  mapping(address => address) public replacementStrategy;

  event CreateLock(address indexed user, uint256 veTokenId, uint256 amount, uint256 unlockTime);
  event IncreaseTime(address indexed user, uint256 veTokenId, uint256 unlockTime);
  event ClaimVeEmissions(address indexed user, uint256 veTokenId, uint256 amount);
  event ClaimRewards(address indexed user, address gauges, address[] tokens);
  event TransferVeToken(address indexed user, address to, uint256 veTokenId);

  function __SolidLizardStaker_init(
    address _solidVoter,
    address _veDist,
    address _treasury,
    address _keeper,
    address _voter
  ) public initializer {
    __DySLIZManager_init(_keeper, _voter);
    __Ownable_init();
    __ReentrancyGuard_init();
    solidVoter = ISolidLizardVoter(_solidVoter);
    veToken = IVeSLIZ(solidVoter.ve());
    veDist = IVeDist(_veDist);
    treasury = _treasury;
  }

  // Checks that caller is the strategy assigned to a specific gauge.
  modifier onlyWhitelist(address _gauge) {
    require(whitelistedStrategy[_gauge] == msg.sender, "!whitelisted");
    _;
  }

  //  --- Pass Through Contract Functions Below ---

  // Pass through a deposit to a boosted gauge
  function deposit(address _gauge, uint256 _amount) external onlyWhitelist(_gauge) {
    // Grab needed info
    IERC20Upgradeable _underlying = ISolidLizardBoostedStrategy(msg.sender).want();
    // Take before balances snapshot and transfer want from strat
    _underlying.safeTransferFrom(msg.sender, address(this), _amount);
    IGauge(_gauge).deposit(_amount, veTokenId);
  }

  // Pass through a withdrawal from boosted chef
  function withdraw(address _gauge, uint256 _amount) external onlyWhitelist(_gauge) {
    // Grab needed pool info
    IERC20Upgradeable _underlying = ISolidLizardBoostedStrategy(msg.sender).want();
    uint256 _before = IERC20Upgradeable(_underlying).balanceOf(address(this));
    IGauge(_gauge).withdraw(_amount);
    uint256 _balance = _underlying.balanceOf(address(this)) - _before;
    _underlying.safeTransfer(msg.sender, _balance);
  }

  // Get Rewards and send to strat
  function harvestRewards(address _gauge, address[] calldata tokens) external onlyWhitelist(_gauge) {
    IGauge(_gauge).getReward(address(this), tokens);
    for (uint256 i; i < tokens.length; ) {
      IERC20Upgradeable(tokens[i]).safeTransfer(msg.sender, IERC20Upgradeable(tokens[i]).balanceOf(address(this)));
      unchecked {
        ++i;
      }
    }
  }

  /**
   * @dev Whitelists a strategy address to interact with the Boosted Chef and gives approvals.
   * @param _strategy new strategy address.
   */
  function whitelistStrategy(address _strategy) external onlyManager {
    IERC20Upgradeable _want = ISolidLizardBoostedStrategy(_strategy).want();
    address _gauge = ISolidLizardBoostedStrategy(_strategy).gauge();
    uint256 stratBal = IGauge(_gauge).balanceOf(address(this));
    require(stratBal == 0, "!inactive");

    _want.safeApprove(_gauge, 0);
    _want.safeApprove(_gauge, type(uint256).max);
    whitelistedStrategy[_gauge] = _strategy;
  }

  /**
   * @dev Removes a strategy address from the whitelist and remove approvals.
   * @param _strategy remove strategy address from whitelist.
   */
  function blacklistStrategy(address _strategy) external onlyManager {
    IERC20Upgradeable _want = ISolidLizardBoostedStrategy(_strategy).want();
    address _gauge = ISolidLizardBoostedStrategy(_strategy).gauge();
    _want.safeApprove(_gauge, 0);
    whitelistedStrategy[_gauge] = address(0);
  }

  /**
   * @dev Prepare a strategy to be retired and replaced with another.
   * @param _oldStrategy strategy to be replaced.
   * @param _newStrategy strategy to be implemented.
   */
  function proposeStrategy(address _oldStrategy, address _newStrategy) external onlyManager {
    require(
      ISolidLizardBoostedStrategy(_oldStrategy).gauge() == ISolidLizardBoostedStrategy(_newStrategy).gauge(),
      "!gauge"
    );
    replacementStrategy[_oldStrategy] = _newStrategy;
  }

  function upgradeStrategy(address _gauge) external onlyWhitelist(_gauge) {
    whitelistedStrategy[_gauge] = replacementStrategy[msg.sender];
  }

  // --- Vote Related Functions ---

  // claim veToken emissions and increases locked amount in veToken
  function claimVeEmissions() public {
    uint256 _amount = veDist.claim(veTokenId);
    emit ClaimVeEmissions(msg.sender, veTokenId, _amount);
  }

  // vote for emission weights
  function vote(address[] calldata _tokenVote, int256[] calldata _weights) external onlyVoter {
    claimVeEmissions();
    solidVoter.vote(veTokenId, _tokenVote, _weights);
  }

  // reset current votes
  function resetVote() external onlyVoter {
    solidVoter.reset(veTokenId);
  }

  function claimMultipleOwnerRewards(address[] calldata _gauges, address[][] calldata _tokens) external onlyManager {
    for (uint256 i; i < _gauges.length; ) {
      claimOwnerRewards(_gauges[i], _tokens[i]);
      unchecked {
        ++i;
      }
    }
  }

  // claim owner rewards such as trading fees and bribes from gauges, transferred to treasury
  function claimOwnerRewards(address _gauge, address[] memory _tokens) public onlyManager {
    IGauge(_gauge).getReward(veTokenId, _tokens);
    for (uint256 i; i < _tokens.length; ) {
      address _reward = _tokens[i];
      uint256 _rewardBal = IERC20Upgradeable(_reward).balanceOf(address(this));

      if (_rewardBal > 0) {
        IERC20Upgradeable(_reward).safeTransfer(treasury, _rewardBal);
      }
      unchecked {
        ++i;
      }
    }

    emit ClaimRewards(msg.sender, _gauge, _tokens);
  }

  // --- Token Management ---

  // create a new veToken if none is assigned to this address
  function createLock(
    uint256 _amount,
    uint256 _lock_duration,
    bool init
  ) external onlyManager {
    require(veTokenId == 0, "veToken > 0");

    if (init) {
      veTokenId = veToken.tokenOfOwnerByIndex(msg.sender, 0);
      veToken.safeTransferFrom(msg.sender, address(this), veTokenId);
    } else {
      require(_amount > 0, "amount == 0");
      want.safeTransferFrom(address(msg.sender), address(this), _amount);
      veTokenId = veToken.createLock(_amount, _lock_duration);

      emit CreateLock(msg.sender, veTokenId, _amount, _lock_duration);
    }
  }

  // merge voting power of two veTokens by burning the _from veToken, _from must be detached and not voted with
  function merge(uint256 _fromId) external {
    require(_fromId != veTokenId, "cannot burn main veTokenId");
    veToken.safeTransferFrom(msg.sender, address(this), _fromId);
    veToken.merge(_fromId, veTokenId);
  }

  // extend lock time for veToken to increase voting power
  function increaseUnlockTime(uint256 _lock_duration) external onlyManager {
    veToken.increaseUnlockTime(veTokenId, _lock_duration);
    emit IncreaseTime(msg.sender, veTokenId, _lock_duration);
  }

  // transfer veToken to another address, must be detached from all gauges first
  function transferVeToken(address _to) external onlyOwner {
    uint256 transferId = veTokenId;
    veTokenId = 0;
    veToken.safeTransferFrom(address(this), _to, transferId);

    emit TransferVeToken(msg.sender, _to, transferId);
  }

  function setTreasury(address _treasury) external onlyOwner {
    treasury = _treasury;
  }

  // confirmation required for receiving veToken to smart contract
  function onERC721Received(
    address operator,
    address from,
    uint256 tokenId,
    bytes calldata data
  ) external view returns (bytes4) {
    operator;
    from;
    tokenId;
    data;
    require(msg.sender == address(veToken), "!veToken");
    return bytes4(keccak256("onERC721Received(address,address,uint,bytes)"));
  }
}
