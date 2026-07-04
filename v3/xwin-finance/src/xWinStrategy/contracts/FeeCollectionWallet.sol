// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./Interface/IxWinSwap.sol";
import "./xWinStrategyInteractor.sol";
import "./Interface/IxWinPriceMaster.sol";
import "./Interface/IxWinStrategy.sol";

contract xWinFeeCollectionWallet is OwnableUpgradeable {
    struct TreasuryData {
        address treasuryAddress;
        uint32 ratio;
    }
    using SafeERC20Upgradeable for IERC20Upgradeable;
    mapping(address => bool) public executors;
    address[] public currencies; // base tokens expected to receive
    TreasuryData[] public treasuries;
    uint256 public minAmount; // 18 decimals, since balanceOf and getUnitPriceInUSD is 18 decimals

    function initialize(uint256 _minAmount) external initializer {
        minAmount = _minAmount;
        executors[msg.sender] = true;
        __Ownable_init();
    }

    function collectFundFees(address[] calldata funds) external {
        for (uint i = 0; i < funds.length; i++) {
            uint256 balance = IERC20Upgradeable(funds[i]).balanceOf(
                address(this)
            );
            uint256 unitPriceInUSD = IxWinStrategy(funds[i])
                .getUnitPriceInUSD();
            uint256 collectionValue = (balance * unitPriceInUSD) / 1e18;
            if (collectionValue > minAmount) {
                IxWinStrategy(funds[i]).withdraw(balance);
            }
        }
    }

    // distribute tokens to wallets
    function transferToTreasuries() external {
        for (uint i = 0; i < currencies.length; i++) {
            uint256 balance = IERC20Upgradeable(currencies[i]).balanceOf(
                address(this)
            );
            if (balance > 0) {
                for (uint j = 0; j < treasuries.length; j++) {
                    uint amtToTransfer = (balance * treasuries[j].ratio) /
                        10000;
                    if (amtToTransfer > 0) {
                        IERC20Upgradeable(currencies[i]).safeTransfer(
                            treasuries[j].treasuryAddress,
                            amtToTransfer
                        );
                    }
                }
            }
        }
    }

    function setCurrencies(
        address[] calldata _currencies
    ) external onlyExecutor {
        delete currencies;
        for (uint i = 0; i < _currencies.length; i++) {
            currencies.push(_currencies[i]);
        }
    }

    function setTresuries(
        TreasuryData[] calldata _treasuries
    ) external onlyOwner {
        delete treasuries;
        uint32 sum;
        for (uint i = 0; i < _treasuries.length; i++) {
            treasuries.push(_treasuries[i]);
            sum += _treasuries[i].ratio;
        }
        require(sum == 10000, "Ratio sum does not equal 100%");
    }

    function setMinAmount(uint256 _amount) external onlyExecutor {
        minAmount = _amount;
    }

    function setExecutor(address _address, bool _allow) external onlyOwner {
        executors[_address] = _allow;
    }

    function getCurrencies() external view returns (address[] memory) {
        return currencies;
    }

    function getTresuries() external view returns (TreasuryData[] memory) {
        return treasuries;
    }

    modifier onlyExecutor() {
        require(executors[msg.sender], "executor: wut?");
        _;
    }
}
