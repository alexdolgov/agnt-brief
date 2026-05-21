pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

contract TheoVaultRoundsTracker is Ownable2Step {
    uint public lastRound = 0;

    // struct to hold data for rolling rounds from each specific vault
    struct VaultRollRound {
        uint16 chain; // chainId of vault
        address vault; // address of vault
        uint round; // round of the vault (not round of the tracker)
        uint usdValue; // value of vault in USD
        uint assetPrice; // price of asset in USD (8 decimals)
        uint tokenAmount; // amount of token in vault
    }
    // stores rounds for each specific vault for querying
    mapping(uint16 => mapping(address => VaultRollRound[])) public vaultRounds;

    // mapping of tracker round to vault roll round data
    mapping(uint => VaultRollRound[]) public rollRounds;
    // mapping of tracker round to tvl across all vaults
    mapping(uint => uint) public roundTvl;

    // mapping of tracker round to value of each vault (trackerRound -> chainId -> vault -> value)
    mapping(uint => mapping(uint16 => mapping(address => uint))) public roundValues;

    constructor() Ownable(msg.sender) {}

    function rollAllRounds(VaultRollRound[] memory _vaults) external onlyOwner {
        lastRound++;
        uint newTotalValueUsd = 0;
        for (uint256 i = 0; i < _vaults.length; i++) {
            newTotalValueUsd += _vaults[i].usdValue;
            roundValues[lastRound][_vaults[i].chain][_vaults[i].vault] = _vaults[i].usdValue;
            rollRounds[lastRound].push(_vaults[i]);
            vaultRounds[_vaults[i].chain][_vaults[i].vault].push(_vaults[i]);
        }
        roundTvl[lastRound] = newTotalValueUsd;
    }

    function latestRoundData() external view returns (VaultRollRound[] memory) {
        return getRoundData(0);
    }

    function getRoundData(uint _roundNum) public view returns (VaultRollRound[] memory) {
        uint round = _roundNum == 0 ? lastRound : _roundNum;
        VaultRollRound[] memory roundData = new VaultRollRound[](rollRounds[round].length);
        for (uint256 i = 0; i < rollRounds[round].length; i++) {
            roundData[i] = rollRounds[round][i];
        }
        return roundData;
    }

    function getAllRounds() public view returns (VaultRollRound[][] memory) {
        VaultRollRound[][] memory allRounds = new VaultRollRound[][](lastRound);
        for (uint256 i = 0; i < lastRound; i++) {
            allRounds[i] = getRoundData(i + 1);
        }
        return allRounds;
    }

    function getLatestVaultValue(uint16 _chain, address _vault) external view returns (uint256) {
        return roundValues[lastRound][_chain][_vault];
    }

    function getLatestTvl() external view returns (uint) {
        return roundTvl[lastRound];
    }

    function getAllVaultRounds(uint16 _chain, address _vault) external view returns (VaultRollRound[] memory) {
        VaultRollRound[] memory rounds = new VaultRollRound[](vaultRounds[_chain][_vault].length);
        for (uint256 i = 0; i < vaultRounds[_chain][_vault].length; i++) {
            rounds[i] = vaultRounds[_chain][_vault][i];
        }
        return rounds;
    }
}
