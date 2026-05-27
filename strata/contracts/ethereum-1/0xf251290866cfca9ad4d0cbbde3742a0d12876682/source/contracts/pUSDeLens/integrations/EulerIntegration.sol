pragma solidity ^0.8.22;

import { IIntegration } from "../Interfaces.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface IEulerVault is IERC4626 {
    function EVC () external view returns (address);
}
interface IEVC {
    function getAccountOwner (address account) external view returns (address);
}

contract EulerIntegration is IIntegration {

    string public name = "Euler Integration";

    IEulerVault public constant pUSDeVault = IEulerVault(0xBd360BB80E6CBe86e533B672Df6BFc054602ADBD);

    function balanceOf(address owner) external view returns (uint256) {
        uint balance = 0;
        for (uint i = 0; i < 256; i++) {
            address account = address(uint160(owner) ^ uint160(i));
            uint shares = pUSDeVault.balanceOf(account);
            if (shares > 0) {
                balance += pUSDeVault.previewRedeem(shares);
            }
        }
        return balance;
    }
}
