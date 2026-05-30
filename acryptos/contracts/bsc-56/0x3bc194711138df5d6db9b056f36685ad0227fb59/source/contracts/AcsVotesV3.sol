// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/math/SafeMath.sol";

interface IGovernanceVault {
    function balanceOf(address account) external view returns (uint256);

    // function getCurrentVotes(address account) external view returns (uint96);
    function getPricePerFullShare() external view returns (uint256);
}

interface IBlpVault {
    function getPoolTokens(bytes32 poolId)
        external
        view
        returns (
            address[] memory tokens,
            uint256[] memory balances,
            uint256 lastChangeBlock
        );
}

contract AcsVotesV3 {
    using SafeMath for uint256;

    string public constant name = "ACryptoS Votes";
    string public constant symbol = "ACS Votes";
    uint8 public constant decimals = 18;

    IGovernanceVault public constant acsAcs =
        IGovernanceVault(0x7679381507af0c8DE64586A458161aa58D3A4FC3);
    IGovernanceVault public constant acsWeight =
        IGovernanceVault(0x6866f9D86E08cC7841F56cb6A0A93677F68FC014);
    IGovernanceVault public constant acsAcsi =
        IGovernanceVault(0x2b66399AD01be47C5aa11C48fDd6DF689DAE929A);
    IBlpVault public constant blpVault =
        IBlpVault(0xa82f327BBbF0667356D2935C6532d164b06cEced);

    function balanceOf(address account) public view returns (uint256) {
        (, uint256[] memory balances, ) = blpVault.getPoolTokens(
            bytes32(
                0x894ed9026de37afd9cce1e6c0be7d6b510e3ffe5000100000000000000000001
            )
        );
        return
            acsWeight
                .balanceOf(account)
                .mul(acsAcs.getPricePerFullShare())
                .div(1e18)
                .add(
                    acsAcsi
                        .balanceOf(account)
                        .mul(acsAcsi.getPricePerFullShare())
                        .div(1e18)
                        .mul(balances[0])
                        .div(balances[1])
                );
    }
}
