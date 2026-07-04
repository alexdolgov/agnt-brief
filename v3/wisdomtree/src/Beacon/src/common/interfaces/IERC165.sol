// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceID`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     * @param interfaceID The interface ID to check.
     * @return bool True if the contract implements the interface, false otherwise.
     */
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}
