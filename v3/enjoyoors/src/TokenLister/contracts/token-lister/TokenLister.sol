// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

interface IEnjoyoorsVault {
    function listToken(address token) external;

    function pauseDeposit(address token) external;
    function pauseWithdrawal(address token) external;
    function pauseClaim(address token) external;

    function resumeDeposit(address token) external;
    function resumeWithdrawal(address token) external;
    function resumeClaim(address token) external;

    function increaseSupplyLimit(address token, uint256 delta) external;
    function decreaseSupplyLimit(address token, uint256 delta) external;
    function changeMinDeposit(address token, uint256 newMinDeposit) external;

    function totalSupply(address token) external view returns (uint256);
    function supplyTillLimit(address token) external view returns (uint256);
    function minDeposit(address token) external view returns (uint256);

    function depositsPaused(address token) external view returns (bool);
    function withdrawalsPaused(address token) external view returns (bool);
    function claimsPaused(address token) external view returns (bool);
}

contract TokenLister {
    address public _owner;

    error NotOwner();
    error InvalidArrayLen();

    modifier onlyOwner() {
        if (msg.sender != _owner) {
            revert NotOwner();
        }
        _;
    }

    constructor(address owner) {
        _owner = owner;
    }

    function listTokens(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;

        for (uint i = 0; i < tokensCount; i++) {
            vault.listToken(tokens[i]);
        }
    }

    function setupTokens(address vaultAddress,
        address[] calldata tokens,
        uint256[] calldata supplyLimits,
        uint256[] calldata minDeposits
    ) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;

        if (tokensCount != supplyLimits.length) {
            revert InvalidArrayLen();
        }
        if (tokensCount != minDeposits.length) {
            revert InvalidArrayLen();
        }
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            uint256 actualMinDeposit = vault.minDeposit(token);
            if (actualMinDeposit != minDeposits[i]) {
                vault.changeMinDeposit(token, minDeposits[i]);
            }

            uint256 actualSupplyTillLimit = vault.supplyTillLimit(token);
            uint256 actualTotalSupply = vault.totalSupply(token);
            uint256 actual = actualTotalSupply + actualSupplyTillLimit;

            uint256 supplyLimit = supplyLimits[i];
            if (actual < supplyLimit) {
                vault.increaseSupplyLimit(token, supplyLimit - actual);
            } else if (actual > supplyLimit) {
                vault.decreaseSupplyLimit(token, actual - supplyLimit);
            }
        }
    }

    function setOwner(address newOwner) external onlyOwner() {
        _owner = newOwner;
    }

    function pauseDeposits(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (!vault.depositsPaused(token)) {
                vault.pauseDeposit(token);
            }
        }
    }

    function pauseWithdrawals(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (!vault.withdrawalsPaused(token)) {
                vault.pauseWithdrawal(token);
            }
        }
    }

    function pauseClaims(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (!vault.claimsPaused(token)) {
                vault.pauseClaim(token);
            }
        }
    }

    function resumeDeposits(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (vault.depositsPaused(token)) {
                vault.resumeDeposit(token);
            }
        }
    }

    function resumeWithdrawals(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (vault.withdrawalsPaused(token)) {
                vault.resumeWithdrawal(token);
            }
        }
    }

    function resumeClaims(address vaultAddress, address[] calldata tokens) external onlyOwner() {
        IEnjoyoorsVault vault = IEnjoyoorsVault(vaultAddress);
        uint tokensCount = tokens.length;
        for (uint i = 0; i < tokensCount; i++) {
            address token = tokens[i];
            if (vault.claimsPaused(token)) {
                vault.resumeClaim(token);
            }
        }
    }
}
