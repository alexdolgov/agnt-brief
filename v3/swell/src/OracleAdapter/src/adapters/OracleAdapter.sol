// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract OracleAdapter is AggregatorV3Interface {
  AggregatorV3Interface public oracle;
  address public owner;

  constructor(address _oracle, address _owner) {
    require(_oracle != address(0), "address0");
    require(_owner != address(0), "address0");
    oracle = AggregatorV3Interface(_oracle);
    owner = _owner;
  }

  event OwnerSet(address indexed owner);
  event OracleSet(address indexed oracle);

  modifier onlyOwner() {
    require(msg.sender == owner, "!owner");
    _;
  }
  function decimals() external view returns (uint8) {
    return oracle.decimals();
  }

  function description() external view returns (string memory) {
    return oracle.description();
  }

  function version() external view returns (uint256) {
    return oracle.version();
  }

  function getRoundData(
    uint80 _roundId
  )
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
  {
    return oracle.getRoundData(_roundId);
  }

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
  {
    return oracle.latestRoundData();
  }

  function setOracle(address _oracle) external onlyOwner {
    require(_oracle != address(0), "address0");
    oracle = AggregatorV3Interface(_oracle);
    emit OracleSet(_oracle);
  }
  function setOwner(address _owner) external onlyOwner {
    require(_owner != address(0), "address0");
    owner = _owner;
    emit OwnerSet(_owner);
  }
  function renounceOwnership() external onlyOwner {
    owner = address(0);
    emit OwnerSet(address(0));
  }
}
