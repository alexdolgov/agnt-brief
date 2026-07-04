// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IMrpcDeposit.sol";

contract MrpcDeposit is IMrpcDeposit, ReentrancyGuardUpgradeable, OwnableUpgradeable, PausableUpgradeable {

    enum TokenListAlteration{ ADD, UPDATE, DISABLE, ENABLE, DELETE }

    event PaymentCollected(address indexed treasury, address[] tokens, uint256[] amounts);
    event ConsensusUpdated(address prevConsensus, address newConsensus);
    event TreasuryUpdated(address prevTreasury, address newTreasury);
    event GovernanceUpdated(address prevGovernance, address newGovernance);
    event TokenListUpdated(address token, TokenListAlteration action);

    struct Slot0 {
        address consensusAddress;
        address treasuryAddress;
        address governanceAddress;
    }

    Slot0 internal _slot0;

    struct TokenConfig {
        uint256 minDeposit;
        bool active;
    }

    struct SupportedTokenEx {
        address token;
        uint256 minDeposit;
        bool active;
    }
    address[] private _acceptableTokens;
    mapping(address => TokenConfig) private _tokenConfigs;

    function initialize(address consensus, address treasury, address governance, address[] calldata tokens, uint256[] calldata minAmounts) external initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __Ownable_init(msg.sender);
        __Deposit_init(consensus, treasury, governance, tokens, minAmounts);
    }

    function __Deposit_init(address consensus, address treasury, address governance, address[] calldata tokens, uint256[] calldata minAmounts) internal {
        require(tokens.length == minAmounts.length, "MrpcDeposit: tokens and amounts list length mismatch");
        _slot0.consensusAddress = consensus;
        _slot0.treasuryAddress = treasury;
        _slot0.governanceAddress = governance;
        for (uint256 i = 0; i < tokens.length; i++) {
            require(tokens[i] != address(0), "MrpcDeposit: wrong token address");
            require(!_tokenConfigs[tokens[i]].active, "MrpcDeposit: token duplicate found");
            require(minAmounts[i] > 0, "MrpcDeposit: wrong min amount");
            _acceptableTokens.push(tokens[i]);
            _tokenConfigs[tokens[i]] = TokenConfig(minAmounts[i], true);
            emit TokenListUpdated(tokens[i], TokenListAlteration.ADD);
        }
    }

    modifier onlyConsensusOrGovernance() {
        require(msg.sender == _slot0.consensusAddress || msg.sender == _slot0.governanceAddress, "MrpcDeposit: only consensus or governance");
        _;
    }

    modifier onlyTreasuryOrGovernance() {
        require(msg.sender == _slot0.treasuryAddress || msg.sender == _slot0.governanceAddress, "MrpcDeposit: only treasury or governance");
        _;
    }

    modifier onlyGovernance() {
        require(msg.sender == _slot0.governanceAddress, "MrpcDeposit: only governance");
        _;
    }

    function deposit(address token, uint256 amount) external nonReentrant whenNotPaused override {
        _collectToken(token, amount, msg.sender, msg.sender);
    }

    function depositForUser(address token, uint256 amount, address user) external nonReentrant whenNotPaused override {
        _collectToken(token, amount, msg.sender, user);
    }

    function _collectToken(address token, uint256 amount, address sender, address destination) internal {
        require(_checkTokenAvailable(token), "MrpcDeposit: this token is not available");
        require(_getMinAmount(token) <= amount, "MrpcDeposit: amount is too small");
        SafeERC20.safeTransferFrom(IERC20(token), sender, address(this), amount);
        emit DepositReceived(destination, token, amount);
    }

    function getSupportedTokens() external view returns (SupportedTokenEx[] memory) {
        SupportedTokenEx[] memory result = new SupportedTokenEx[](_acceptableTokens.length);
        for (uint256 i = 0; i < _acceptableTokens.length; i++) {
            address token = _acceptableTokens[i];
            result[i].token = token;
            result[i].minDeposit = _tokenConfigs[token].minDeposit;
            result[i].active = _tokenConfigs[token].active;
        }        
        return result;
    }

    function deleteToken(address token) external onlyConsensusOrGovernance() {
        require(_checkTokenListed(token), "MrpcDeposit: this token is not known");
        require(IERC20(token).balanceOf(address(this)) == 0, "MrpcDeposit: cannot delete token with positive balance");
        for (uint256 i = 0; i < _acceptableTokens.length; i++) {
            if (_acceptableTokens[i] == token) {
                _acceptableTokens[i] = _acceptableTokens[_acceptableTokens.length - 1];
                _acceptableTokens.pop();
                break;
            }
        }
        delete _tokenConfigs[token];
        emit TokenListUpdated(token, TokenListAlteration.DELETE);
    }

    function disableToken(address token) external onlyConsensusOrGovernance() {
        require(_checkTokenListed(token), "MrpcDeposit: this token is not known");
        _tokenConfigs[token].active = false;
        emit TokenListUpdated(token, TokenListAlteration.DISABLE);
    }

    function enableToken(address token) external onlyConsensusOrGovernance() {
        require(_checkTokenListed(token), "MrpcDeposit: this token is not known");
        _tokenConfigs[token].active = true;
        emit TokenListUpdated(token, TokenListAlteration.ENABLE);
    }

    function addOrUpdateToken(address token, uint256 minAmount, bool active) external onlyConsensusOrGovernance() {
        require(token != address(0), "MrpcDeposit: wrong token address");
        require(minAmount > 0, "MrpcDeposit: wrong min amount");
        _tokenConfigs[token] = TokenConfig(minAmount, active);
        if (_checkTokenListed(token)) {
            emit TokenListUpdated(token, TokenListAlteration.UPDATE);
        } else {
            _acceptableTokens.push(token);
            emit TokenListUpdated(token, TokenListAlteration.ADD);
        }
    }

    function getClaimableAmount(address token) external view returns (uint256) {
        require(_checkTokenKnown(token), "this token is not supported");
        return IERC20(token).balanceOf(address(this));
    }

    function collectPayment(address[] calldata tokens, uint256[] calldata amounts, address treasury) external onlyConsensusOrGovernance whenNotPaused {
        require(treasury == _slot0.treasuryAddress, "MrpcDeposit: cannot claim on this address");
        require(tokens.length == amounts.length, "MrpcDeposit: malformed data, arrays does not match");
        for (uint256 i = 0; i < tokens.length; i++) {
            require(_checkTokenKnown(tokens[i]), "MrpcDeposit: this token is not known");
        }
        for (uint256 i = 0; i < tokens.length; i++) {
            require(IERC20(tokens[i]).balanceOf(address(this)) >= amounts[i], "MrpcDeposit: wrong amount");
            SafeERC20.safeTransfer(IERC20(tokens[i]), treasury, amounts[i]);
        }
        emit PaymentCollected(treasury, tokens, amounts);
    }

    function getTreasury() external view returns (address) {
        return _slot0.treasuryAddress;
    }

    function getConsensus() external view returns (address) {
        return _slot0.consensusAddress;
    }

    function getGovernance() external view returns (address) {
        return _slot0.governanceAddress;
    }

    function changeTreasury(address newTreasury) external onlyTreasuryOrGovernance {
        emit TreasuryUpdated(_slot0.treasuryAddress, newTreasury);
        _slot0.treasuryAddress = newTreasury;
    }

    function changeConsensus(address newConsensus) external onlyConsensusOrGovernance {
        emit ConsensusUpdated(_slot0.consensusAddress, newConsensus);
        _slot0.consensusAddress = newConsensus;
    }

    function changeGovernance(address newGovernance) external onlyGovernance {
        emit GovernanceUpdated(_slot0.governanceAddress, newGovernance);
        _slot0.governanceAddress = newGovernance;
    }

    function _checkTokenListed(address token) internal view returns (bool) {
        for (uint256 i = 0; i < _acceptableTokens.length; i++) {
            if (_acceptableTokens[i] == token) {
                return true;
            }
        }
        return false;
    }

    function _checkTokenKnown(address token) internal view returns (bool) {
        return _tokenConfigs[token].active || _tokenConfigs[token].minDeposit > 0;
    }

    function _checkTokenAvailable(address token) internal view returns (bool) {
        return _tokenConfigs[token].active;
    }

    function _getMinAmount(address token) internal view returns (uint256) {
        if (_tokenConfigs[token].active) {
            return _tokenConfigs[token].minDeposit;
        }
        return type(uint256).max;
    }

    function pause() public onlyConsensusOrGovernance() {
        _pause();
    }

    function unpause() public onlyConsensusOrGovernance() {
        _unpause();
    }
}