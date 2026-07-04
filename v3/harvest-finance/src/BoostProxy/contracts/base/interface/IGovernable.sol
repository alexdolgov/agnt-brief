//SPDX-License-Identifier: Unlicense

pragma solidity 0.6.12;

interface IGovernable {
  function governance() external view returns(address);
}
