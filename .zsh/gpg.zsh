encrypt () {
        output="${1}".$(date +%s).enc
        gpg --encrypt --armor --output ${output} -r "${KEYID}" "${1}" && echo "${1} -> ${output}"
}

decrypt () {
        output=$(echo "${1}" | rev | cut -c16- | rev)
        gpg --decrypt --output ${output} "${1}" && echo "${1} -> ${output}"
}

