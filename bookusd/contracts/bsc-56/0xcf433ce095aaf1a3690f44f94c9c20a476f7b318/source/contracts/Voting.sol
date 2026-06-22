// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract Voting is Initializable, PausableUpgradeable, OwnableUpgradeable {
    struct VoteInfo {
        address token;
        string name;
        string symbol;
        uint256 votes;
        bool enabled;
    }

    uint256 public costToAddNewToken = 0.1 ether;

    VoteInfo[] public voteInfo;

    mapping(address => uint256) public tokenToIndex;

    // Track users so they can only vote once
    // Mapping of user to token address
    mapping(address => address) public userVotes;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) public initializer {
        __Pausable_init();
        __Ownable_init(initialOwner);

        // We won't use index 0 of array, so add 0 address
        voteInfo.push(VoteInfo((address(0)), "", "", 0, false));
    }

    function vote(address _token) public payable {
        require(_token != address(0), "Voting: token address must not be 0");
        require(userVotes[msg.sender] == address(0), "Voting: user has already voted");

        if (tokenToIndex[_token] == 0) {
            require(msg.value > costToAddNewToken, "Voting: must send ether to vote for the first time");
            _addNewToken(_token);
        }

        require(voteInfo[tokenToIndex[_token]].enabled, "Voting: token is not enabled");

        userVotes[msg.sender] = _token;
        voteInfo[tokenToIndex[_token]].votes++;
    }

    function updateCostToAddToken(uint256 _cost) public onlyOwner {
        costToAddNewToken = _cost;
    }

    function getAllResults() public view returns (VoteInfo[] memory _results) {
        uint256 total = totalTokens();
        _results = new VoteInfo[](total);

        for (uint i = 1; i < voteInfo.length; i++) {
            _results[i - 1] = (voteInfo[i]);
        }
    }

    function totalTokens() public view returns (uint256) {
        if (voteInfo.length == 0) {
            return 0;
        }
        return voteInfo.length - 1;
    }

    function updateToken(address _token, bool _enabled) public onlyOwner {
        require(tokenToIndex[_token] != 0, "Voting: token not found");

        uint256 index = tokenToIndex[_token];
        voteInfo[index].enabled = _enabled;
    }

    function adminAddToken(address _token) public onlyOwner {
        require(tokenToIndex[_token] == 0, "Voting: token already exists");

        _addNewToken(_token);
    }

    function _addNewToken(address _token) private {
        string memory name = IERC20Metadata(_token).name();
        string memory symbol = IERC20Metadata(_token).symbol();
        require(bytes(name).length > 0, "Voting: token name must not be empty");
        require(bytes(symbol).length > 0, "Voting: token symbol must not be empty");
        voteInfo.push(VoteInfo(_token, name, symbol, 0, true)); // Add new token
        tokenToIndex[_token] = voteInfo.length - 1;
    }

    function withdrawEther() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}
