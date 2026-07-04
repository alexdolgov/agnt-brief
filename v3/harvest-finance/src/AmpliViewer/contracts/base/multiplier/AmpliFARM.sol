pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";

import "../inheritance/ControllableInit.sol";
import "./Amplifier.sol";
import "./AmpliFARMStorage.sol";
import "./BoostStaking.sol";
import "./BoostRedirection.sol";

contract AmpliFARM is ERC20Upgradeable, ControllableInit {

  using SafeMathUpgradeable for uint256;
  using SafeERC20Upgradeable for IERC20Upgradeable;

  bytes32 internal constant AMPLIFARM_STORAGE_SLOT = 0xb70e0a2f3b0677ddbe9981bf1a61ed0d7f02f896f4aae5a6b378bab4c0d3fbfd;

  constructor () public {
    assert(AMPLIFARM_STORAGE_SLOT == bytes32(uint256(keccak256("eip1967.proxy.ampliFarmStorageSlot")) - 1));
  }

  function initialize(
    string memory _name,
    string memory _symbol,
    address _farm,
    address _storage
  ) initializer external {
    __ERC20_init(
      _name,
      _symbol
    );
    _setupDecimals(18);
    ControllableInit.initialize(
      _storage
    );
    GovernableInit.initialize(_storage);
    address ampliFarmStorage = address(new AmpliFARMStorage());
    AmpliFARMStorage(ampliFarmStorage).setFarm(_farm);
    AmpliFARMStorage(ampliFarmStorage).setWhitelist(governance(), true);
    bytes32 slot = AMPLIFARM_STORAGE_SLOT;
    assembly {
      sstore(slot, ampliFarmStorage)
    }
  }

  function ampliFarmStorage() public view returns (AmpliFARMStorage) {
    bytes32 slot = AMPLIFARM_STORAGE_SLOT;
    address impl;
    assembly {
      impl := sload(slot)
    }
    return AmpliFARMStorage(impl);
  }

  /**
  * Creates new amplified FARM by wrapping some and setting some aside for boosting.
  * The set aside is done with a fixed configured ratio for boost, so it may
  * dilute the boost factor if the amplifier contract received some additional FARM.
  * To prevent the possibility of double dipping, it can be created by a governance only.
  */
  function wrap(uint256 amountFarm) public returns(uint256) {
    require(ampliFarmStorage().whitelist(msg.sender), "Not authorized");
    // transfer in more FARM as some will be set aside
    IERC20Upgradeable(farm()).safeTransferFrom(msg.sender, address(this), amountFarm);
    if (boostStaking() == address(0)) {
      // no boost is configured, this is just a wrapper now
      _mint(msg.sender, amountFarm);
      return amountFarm;
    } else {
      // always wrapping in a given ratio
      uint256 farmToBoost = amountFarm
        .mul(ampliFarmStorage().boostNumerator())
        .div(ampliFarmStorage().boostDenominator());
      // set aside a bit for the boost
      // this contract will keep FARM in 1:1 ratio
      IERC20Upgradeable(farm()).safeTransfer(amplifier(), farmToBoost);
      // mint the rest
      uint256 toMint = amountFarm.sub(farmToBoost);
      _mint(msg.sender, toMint);
      return toMint;
    }
  }

  /**
  * Withdraws FARM from amplified FARM in an 1:1 ratio. It additionally awards boost
  * proportional to the amount of FARM stored in amplifier and the portion of amplified
  * FARM being burned (w.r.t. its total supply), provided that the user has enough
  * boost earned by staking.
  */
  function withdraw(uint256 amountAmpliFarm) public {
    if (boostStaking() == address(0)) {
      // redeeming in 1:1 rate only, because staking is not configured
      _burn(msg.sender, amountAmpliFarm);
      IERC20Upgradeable(farm()).safeTransfer(msg.sender, amountAmpliFarm);
    } else {
      // convert ampliFARM to FARM and check if user can withdraw that
      refresh();
      uint256 accruedBoost = BoostStaking(boostStaking()).accruedLimit(msg.sender);
      uint256 possibleBoost = IERC20Upgradeable(farm()).balanceOf(amplifier())
        .mul(amountAmpliFarm)
        .div(totalSupply());
      uint256 boost = SafeMath.min(accruedBoost, possibleBoost);
      // and we burn the tokens
      _burn(msg.sender, amountAmpliFarm);
      // we withdraw the entire boost
      Amplifier(amplifier()).withdraw(address(this), possibleBoost);
      // the user gets only what they are entitled to
      BoostStaking(boostStaking()).use(msg.sender, boost);
      IERC20Upgradeable(farm()).safeTransfer(msg.sender, amountAmpliFarm.add(boost));
      // the rest of the boost will be redirected
      if (boost < possibleBoost) {
        uint256 boostToRedirect = possibleBoost.sub(boost);
        IERC20Upgradeable(farm()).safeApprove(ampliFarmStorage().boostRedirection(), 0);
        IERC20Upgradeable(farm()).safeApprove(ampliFarmStorage().boostRedirection(), boostToRedirect);
        BoostRedirection(ampliFarmStorage().boostRedirection()).redirect(farm(), boostToRedirect);
      }
    }
  }

  /**
  * Claims boost in staking.
  */
  function refresh() public {
    if (boostStaking() != address(0)) {
      BoostStaking(boostStaking()).claim(msg.sender);
    }
  }

  /**
  * Configures boost.
  */
  function configureBoost(
    address _amplifier,
    address _boostStaking,
    address _boostRedirection,
    uint256 _boostNumerator,
    uint256 _boostDenominator) public onlyGovernance {
    ampliFarmStorage().setAmplifier(_amplifier);
    ampliFarmStorage().setBoostRedirection(_boostRedirection);
    ampliFarmStorage().setBoostStaking(_boostStaking);
    ampliFarmStorage().setBoostNumerator(_boostNumerator);
    ampliFarmStorage().setBoostDenominator(_boostDenominator);
  }

  /**
  * Allows or disallows an account to wrap FARM.
  */
  function setWhitelisted(address who, bool allowed) public onlyGovernance {
    // !!! IMPORTANT
    // Any whitelisted contract must have wraping annotated as onlyGovernance so that it does not
    // expose access to the wrapping of AmpliFARM to everyone
    ampliFarmStorage().setWhitelist(who, allowed);
  }

  /**
  * Schedules an upgrade for the proxy.
  */
  function scheduleUpgrade(address impl) external onlyGovernance {
    ampliFarmStorage().setNextImplementation(impl);
    ampliFarmStorage().setNextImplementationTimestamp(
      block.timestamp.add(ampliFarmStorage().nextImplementationDelay())
    );
  }

  function finalizeUpgrade() external onlyGovernance {
    ampliFarmStorage().setNextImplementation(address(0));
    ampliFarmStorage().setNextImplementationTimestamp(0);
  }

  function shouldUpgrade() external view returns (bool, address) {
    return (
      nextImplementationTimestamp() != 0
      && block.timestamp > nextImplementationTimestamp()
      && nextImplementation() != address(0),
      nextImplementation()
    );
  }
  
  function farm() public view returns(address) {
    return ampliFarmStorage().farm();
  }

  function boostStaking() public view returns(address) {
    return ampliFarmStorage().boostStaking();
  }

  function amplifier() public view returns(address) {
    return ampliFarmStorage().amplifier();
  }

  function nextImplementation() public view returns(address) {
    return ampliFarmStorage().nextImplementation();
  }

  function nextImplementationTimestamp() public view returns(uint256) {
    return ampliFarmStorage().nextImplementationTimestamp();
  }
}
