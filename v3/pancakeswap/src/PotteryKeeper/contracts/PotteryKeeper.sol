pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin-4.6.0/contracts/access/Ownable.sol";
import {KeeperCompatibleInterface} from "@chainlink/contracts/src/v0.8/KeeperCompatible.sol";
import {Vault} from "./utils/Vault.sol";
import {Pottery} from "./utils/Pottery.sol";
import {IPancakeSwapPotteryVault} from "./interfaces/IPancakeSwapPotteryVault.sol";
import {IPancakeSwapPotteryDraw} from "./interfaces/IPancakeSwapPotteryDraw.sol";
import {IPotteryKeeper} from "./interfaces/IPotteryKeeper.sol";

contract PotteryKeeper is KeeperCompatibleInterface, IPotteryKeeper, Ownable {
    IPancakeSwapPotteryVault[] activeVaults;
    IPancakeSwapPotteryDraw potteryDraw;
    address keeperRegistry;

    event SetKeeperRegistry(address registry, address admin);
    event SetPotteryDraw(address pottery, address admin);
    event AddActiveVault(address vault, address admin);
    event RemoveActiveVault(address vault, address admin);

    modifier onlyKeeperRegistry() {
        require(msg.sender == keeperRegistry, "keepers only");
        _;
    }

    modifier onlyPotteryDrawOrOwner() {
        require(msg.sender == address(potteryDraw) || msg.sender == owner(), "pottery or owner only");
        _;
    }

    constructor(address _potteryDraw, address _registry) {
        require(_potteryDraw != address(0) && _registry != address(0), "zero address");

        potteryDraw = IPancakeSwapPotteryDraw(_potteryDraw);
        keeperRegistry = _registry;
    }

    function getActiveVaults() external view returns (IPancakeSwapPotteryVault[] memory) {
        return activeVaults;
    }

    function checkUpkeep(
        bytes calldata /* checkData */
    ) external view override returns (bool upkeepNeeded, bytes memory performData) {
        uint256 vaultPosition;
        for (uint256 i = 0; i < activeVaults.length; i++) {
            IPancakeSwapPotteryVault vault = activeVaults[i];
            if (vault.getStatus() == Vault.Status.BEFORE_LOCK) {
                if (vault.getLockTime() > block.timestamp) continue;
            } else if (vault.getStatus() == Vault.Status.LOCK) {
                if (!vault.passLockTime()) {
                    Pottery.Pot memory pot = potteryDraw.getPot(address(vault));
                    if (pot.numOfDraw >= potteryDraw.getNumOfDraw()) continue;
                    if (pot.startDraw) {
                        Pottery.Draw memory draw = potteryDraw.getDraw(pot.lastDrawId);
                        if (!potteryDraw.timeToDraw(address(vault)) && draw.closeDrawTime != 0) continue;
                        if (!potteryDraw.rngFulfillRandomWords(pot.lastDrawId) && draw.closeDrawTime == 0) continue;
                    } else {
                        if (!potteryDraw.timeToDraw(address(vault))) continue;
                    }
                }
            } else {
                continue;
            }

            vaultPosition = i;
            upkeepNeeded = true;
            break;
        }
        if (upkeepNeeded) performData = abi.encode(vaultPosition);
    }

    function performUpkeep(bytes calldata performData) external override onlyKeeperRegistry {
        uint256 vaultPosition = abi.decode(performData, (uint256));

        IPancakeSwapPotteryVault vault = activeVaults[vaultPosition];
        Vault.Status status = vault.getStatus();

        if (status == Vault.Status.BEFORE_LOCK) vault.lockCake();
        if (status == Vault.Status.LOCK) {
            if (!vault.passLockTime()) {
                Pottery.Pot memory pot = potteryDraw.getPot(address(vault));
                if (pot.startDraw) {
                    Pottery.Draw memory draw = potteryDraw.getDraw(pot.lastDrawId);
                    if (draw.startDrawTime != 0 && draw.closeDrawTime == 0) {
                        potteryDraw.closeDraw(pot.lastDrawId);
                    } else {
                        potteryDraw.startDraw(address(vault));
                    }
                } else {
                    potteryDraw.startDraw(address(vault));
                }
            } else {
                vault.unlockCake();
                popActiveVault(vaultPosition);
            }
        }
    }

    function addActiveVault(address _vault) external override onlyPotteryDrawOrOwner {
        require(_vault != address(0), "zero address");
        activeVaults.push(IPancakeSwapPotteryVault(_vault));

        emit AddActiveVault(_vault, msg.sender);
    }

    function removeActiveVault(address _vault, uint256 _pos) external override onlyPotteryDrawOrOwner {
        require(_vault != address(0), "zero address");
        require(_vault == address(activeVaults[_pos]), "address mismatch");
        popActiveVault(_pos);
    }

    function popActiveVault(uint256 _pos) internal {
        address vault = address(activeVaults[_pos]);
        activeVaults[_pos] = activeVaults[activeVaults.length - 1];
        activeVaults.pop();

        emit RemoveActiveVault(vault, msg.sender);
    }

    function setKeeperRegistry(address _registry) public onlyOwner {
        require(_registry != address(0), "zero address");
        keeperRegistry = _registry;

        emit SetKeeperRegistry(_registry, msg.sender);
    }

    function setPotteryDraw(address _potteryDraw) public onlyOwner {
        require(_potteryDraw != address(0), "zero address");
        potteryDraw = IPancakeSwapPotteryDraw(_potteryDraw);

        emit SetPotteryDraw(_potteryDraw, msg.sender);
    }
}
