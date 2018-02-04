;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Transform bracket pair  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun xah-chnge-bracket-pairs (φp1 φp2 φfromType φtoType)

  (interactive
   (let ((ξbracketsList
          '("()" "{}" "[]" "<>")))
     (if (use-region-p)
         (progn (list
                 (region-beginning)
                 (region-end)
                 (ido-completing-read "Replace this:" ξbracketsList )
                 (ido-completing-read "To:" ξbracketsList )))
       (progn
         (list
          (line-beginning-position)
          (line-end-positio
          (ido-completing-read "Replace this:" ξbracketsList )
          (ido-completing-read "To:" ξbracketsList ))))))
  (let* (
         (ξfindReplaceMap
          (vector
           (vector (char-to-string (elt φfromType 0)) (char-to-string (elt φtoType 0)))
           (vector (char-to-string (elt φfromType 1)) (char-to-string (elt φtoType 1))))))
    (save-excursion
      (save-restriction
        (narrow-to-region φp1 φp2)
        (let ( (case-fold-search nil))
          (mapc
           (lambda (ξx)
             (goto-char (point-min))
             (while (search-forward (elt ξx 0) nil t)
               (replace-match (elt ξx 1) 'FIXEDCASE 'LITERAL)))
           ξfindReplaceMap))))))

