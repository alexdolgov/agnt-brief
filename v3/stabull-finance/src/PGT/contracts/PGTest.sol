// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PGT is ERC20, Ownable {
    // current address is:0x5B3c6a14EA45CCdEF23F02F44f8D30b4b7Ff29ef
    struct Rankings {
        address user;
        uint64 rank;
    }

    uint8 constant _decimals = 18;
    uint256 constant _decimalFactor = 10 ** _decimals;
    address public _routerAddress = 0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45;
    uint64 private _curRanking = 1;
    mapping(address => bool) public _blacklists;
    mapping(address => uint64) public _holderRankings;
    bool public _limited = false;
    uint256 public _maxHoldingAmount = 10_000_000_000;
    uint256 public _minHoldingAmount = 100_000_000;

    event RankingData(address user, uint64 rank);

    constructor() ERC20("pgt", "PGT") {
        uint256 _totalSupply = 1_000_000_000_000 * _decimalFactor;

        _mint(msg.sender, _totalSupply);
    }

    function addBlackList(address user, bool isBlack) external onlyOwner {
        _blacklists[user] = isBlack;
    }

    function setMaxHoldingAmount(uint256 amount) external onlyOwner {
        _maxHoldingAmount = amount;
    }

    function setMinHoldingAmount(uint256 amount) external onlyOwner {
        _minHoldingAmount = amount;
    }

    function getUserRemaining(address user) external view returns (uint64) {
        if (_holderRankings[user] > 0) {
            return _holderRankings[user];
        }
        return 0;
    }

    function setLimit(bool limit) external onlyOwner {
        _limited = limit;
    }

    function setRouter(address router) external onlyOwner {
        _routerAddress = router;
    }

    function decimals() public pure override returns (uint8) {
        return _decimals;
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {
        require(!_blacklists[to] && !_blacklists[from], "Blacklisted");

        if (_limited && msg.sender == _routerAddress) {
            require(
                super.balanceOf(to) + amount <= _maxHoldingAmount && super.balanceOf(to) + amount >= _minHoldingAmount,
                "Forbid"
            );
        }

        if (_holderRankings[to] <= 0) {
            _curRanking += 1;
            _holderRankings[to] = _curRanking;
            emit RankingData(to, _curRanking);
        }
    }

    receive() external payable {}
}
