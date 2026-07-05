pragma solidity 0.6.12;

contract AmpliFARMStorage {

  address public token;
  address public farm;
  address public amplifier;
  address public boostStaking;
  address public boostRedirection;
  uint256 public boostNumerator;
  uint256 public boostDenominator;
  mapping(address => bool) public whitelist;
  address public nextImplementation;
  uint256 public nextImplementationTimestamp;
  uint256 public nextImplementationDelay = 12 hours;

  modifier onlyToken() {
    require(msg.sender == token, "Not token");
    _;
  }

  constructor() public {
    token = msg.sender;
  }

  function setFarm(address _farm) onlyToken external {
    farm = _farm;
  }

  function setToken(address _token) onlyToken external {
    token = _token;
  }

  function setAmplifier(address _amplifier) onlyToken external {
    amplifier = _amplifier;
  }

  function setBoostStaking(address _boostStaking) onlyToken external {
    boostStaking = _boostStaking;
  }

  function setBoostRedirection(address _boostRedirection) onlyToken external {
    boostRedirection = _boostRedirection;
  }

  function setBoostNumerator(uint256 _boostNumerator) onlyToken external {
    boostNumerator = _boostNumerator;
  }

  function setBoostDenominator(uint256 _boostDenominator) onlyToken external {
    boostDenominator = _boostDenominator;
  }

  function setWhitelist(address _key, bool _value) onlyToken external {
    whitelist[_key] = _value;
  }

  function setNextImplementation(address _nextImplementation) onlyToken external {
    nextImplementation = _nextImplementation;
  }

  function setNextImplementationTimestamp(uint256 _value) onlyToken external {
    nextImplementationTimestamp = _value;
  }

  function setNextImplementationDelay(uint256 _value) onlyToken external {
    nextImplementationDelay = _value;
  }
}
